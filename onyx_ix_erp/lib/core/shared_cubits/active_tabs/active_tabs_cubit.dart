import 'package:onyx_ix/core/src/common_app_export.dart';
part 'active_tabs_state.dart';

class ActiveTabsCubit extends HydratedCubit<ActiveTabsState> {
  ActiveTabsCubit() : super(const ActiveTabsState());

  late TabController tabController;
  TickerProvider tickerProvider = const _StaticTickerProvider();

  /// initialize Tab Controller
  Future<void> initializeTabController() async {
    tabController = TabController(
      vsync: tickerProvider,
      length: state.tabs.length,
    );

    /// check if isEmpty to add dashboard tab
    if (state.tabs.isEmpty) {
      List<ScreensEnt> tabs = [];
      ScreensEnt tab = ScreensEnt(
        screenName: "dashboard",
        tabName: "dashboard",
        screenPath: AppPaths.dashboard,
        tabPath: AppPaths.dashboard,
        screenId: 0,
        sysNo: 0,
        isNewItmScreen: false,
        cubit: getIt<DashboardCubit>()..getDashboardData(),
        builder: (context, cubit) => BlocProvider<DashboardCubit>.value(
          value: cubit as DashboardCubit,
          child: const DashboardView(),
        ),
      );

      tabs.add(tab);

      tabController.dispose();
      tabController = TabController(vsync: tickerProvider, length: tabs.length);

      emit(state.copyWith(
          status: ActiveTabsStateStatus.loaded,
          tabs: tabs,
          currentIndex: 0,
          initUrlPath: AppPaths.dashboard));
    }
  }

  void updateFeatureDocData(FeatureDocDataEnt featureDocDataEnt) {
    emit(state.copyWith(featureDocDataEnt: featureDocDataEnt));
  }

  /// dispose tabController
  void disposeTabController() {
    tabController.dispose();
  }

  /// Add a new Active Tab
  void addActiveTab(ScreensEnt tab, {bool suspendCurrentTab = false}) {
    List<ScreensEnt> updatedTabs = List.from(state.tabs);

    int index = updatedTabs.indexWhere((t) => t.tabName == tab.tabName);

    if (index == -1) {
      // Insert the new tab at the beginning of the list
      updatedTabs.insert(1, tab);

      // Dispose the old controller
      tabController.dispose();
      tabController =
          TabController(vsync: tickerProvider, length: updatedTabs.length);

      getIt<NavigationService>().navigatorKey.currentContext!.go(tab.tabPath);
      tabController.animateTo(1);

      emit(state.copyWith(
        status: ActiveTabsStateStatus.loaded,
        tabs: updatedTabs,
        currentIndex: 1,
        initUrlPath: tab.tabPath,
      ));
    } else {
      tabController.animateTo(index);
      getIt<NavigationService>().navigatorKey.currentContext!.go(tab.tabPath);

      emit(state.copyWith(
        status: ActiveTabsStateStatus.loaded,
        currentIndex: index,
        initUrlPath: tab.tabPath,
      ));
    }
  }

  /// Navigate to a specific Active Tab
  void navigationActiveTab(int indexTab) {
    List<ScreensEnt> updatedTabs = List.from(state.tabs);

    tabController.animateTo(indexTab);
    getIt<NavigationService>().navigatorKey.currentContext!.go(updatedTabs[indexTab].tabPath);

    emit(state.copyWith(
      status: ActiveTabsStateStatus.loaded,
      tabs: updatedTabs,
      currentIndex: indexTab,
      initUrlPath: updatedTabs[indexTab].tabPath,
    ));
  }

  /// remove the tab
  void removeActiveTab(ScreensEnt tab,
      {required void Function() reSetSideMenuTree}) {
    List<ScreensEnt> tabs = List.from(state.tabs);
    final int index = tabs.indexWhere((t) => t.tabPath == tab.tabPath);

    if (!getIt<NavigationService>().navigatorKey.currentContext!.isDesktop) {
      Navigator.of(getIt<NavigationService>().navigatorKey.currentContext!).pop(tab.screenId);
    }

    if (index != -1) {
      if (tab.screenId != -1) {
        tab.cubit?.close();
      }

      /// remove tab
      tabs.removeAt(index);

      tabController.dispose();
      tabController = TabController(vsync: tickerProvider, length: tabs.length);

      int? currentIndex;

      if (index == state.currentIndex) {
        if (tabs.length >= 2) {
          tabController.index = 1;
          currentIndex = 1;
          getIt<NavigationService>().navigatorKey.currentContext!.go(tabs[currentIndex].tabPath);
        } else {
          tabController.index = 0;
          currentIndex = 0;
          getIt<NavigationService>().navigatorKey.currentContext!.go(tabs[currentIndex].tabPath);
        }

        tabController.animateTo(currentIndex);

        emit(
          state.copyWith(
            status: ActiveTabsStateStatus.loaded,
            tabs: tabs,
            currentIndex: currentIndex,
            initUrlPath: tabs[currentIndex].tabPath,
          ),
        );
      } else {
        currentIndex = state.currentIndex == tabs.length
            ? state.currentIndex - 1
            : state.currentIndex;
        getIt<NavigationService>().navigatorKey.currentContext!.go(tabs[currentIndex].tabPath);
        tabController.animateTo(currentIndex);

        emit(state.copyWith(
          status: ActiveTabsStateStatus.loaded,
          tabs: tabs,
          currentIndex: currentIndex,
          initUrlPath: tabs[currentIndex].tabPath,
        ));
      }
    }

    /// if there is only one tab (dashboard) then change side menu tree state to begin
    if (tabs.length == 1) {
      reSetSideMenuTree();
    }
  }

  /// update tab
  void updateActiveTab({required ScreensEnt tab}) {
    List<ScreensEnt> tabs = List.from(state.tabs);

    tabs[state.currentIndex] = tab;

    tabController.dispose();
    tabController = TabController(vsync: tickerProvider, length: tabs.length);

    if (!getIt<NavigationService>().navigatorKey.currentContext!.isDesktop) {
      Navigator.of(getIt<NavigationService>().navigatorKey.currentContext!).pop(tab.screenId);
    }

    getIt<NavigationService>().navigatorKey.currentContext!.go(tab.tabPath);
    tabController.animateTo(state.currentIndex);

    emit(state.copyWith(
      status: ActiveTabsStateStatus.loaded,
      tabs: tabs,
      initUrlPath: tab.tabPath,
    ));
  }

  /// Clear All Active Tabs
  void clearAllActiveTabs() {
    List<ScreensEnt> tabs = [];
    tabs.add(state.tabs.first);

    getIt<NavigationService>().navigatorKey.currentContext!.pop();
    tabController.dispose();
    tabController = TabController(vsync: tickerProvider, length: tabs.length);
    tabController.index = tabs.length;
    tabController.animateTo(0);

    emit(state.copyWith(
      status: ActiveTabsStateStatus.loaded,
      tabs: tabs,
      currentIndex: 0,
      initUrlPath: tabs[0].tabPath,
    ));
  }

  void changeTabSuspendStatus() {
    emit(state.copyWith());
  }

  void colapsdownHamburgerMenu() {
    emit(state.copyWith(downHamburgerMenu: !state.downHamburgerMenu));
  }

  /// Convert JSON to state (used for restoring state)
  @override
  ActiveTabsState? fromJson(Map<String, dynamic> json) {
    final remote = getIt<RemoteConfigService>();
    try {
      final int currentIndex = json['currentIndex'];
      final String initUrlPath = json['initUrlPath'];

      final List<ScreensEnt> restoredTabs =
          (json['tabs'] as List<dynamic>).map((tabJson) {
        String key = "screen_${tabJson['screenId']}_isAppear";
        bool show = remote.getBool(key);
        return ScreensEnt.fromJson(tabJson,
            callCubit: true, show: tabJson['screenId'] == 0 ? true : !show);
      }).toList();

      // Initialize TabController with restored tabs
      tabController =
          TabController(vsync: tickerProvider, length: restoredTabs.length);

      if (restoredTabs.isNotEmpty) {
        Future.delayed(const Duration(milliseconds: 100), () {
          tabController.animateTo(currentIndex);
        });
      }

      return ActiveTabsState(
        status: ActiveTabsStateStatus.loaded,
        initUrlPath: initUrlPath,
        tabs: restoredTabs,
        currentIndex: currentIndex,
      );
    } catch (e) {
      return null;
    }
  }

  /// Convert state to JSON (used for saving state)
  @override
  Map<String, dynamic>? toJson(ActiveTabsState state) {
    return {
      'currentIndex': state.currentIndex,
      'initUrlPath': state.initUrlPath,
      'tabs': state.tabs.map((tab) => tab.toJson()).toList(),
    };
  }
}

/// A simple TickerProvider implementation
class _StaticTickerProvider extends TickerProvider {
  const _StaticTickerProvider();
  @override
  Ticker createTicker(TickerCallback onTick) => Ticker(onTick);
}
