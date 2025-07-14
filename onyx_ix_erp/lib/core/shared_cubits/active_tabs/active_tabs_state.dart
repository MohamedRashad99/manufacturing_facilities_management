part of 'active_tabs_cubit.dart';

enum ActiveTabsStateStatus {
  initial,
  loading,
  loaded,
  error,
}

extension ActiveTabsStateExt on ActiveTabsState {
  bool get isInitial => status == ActiveTabsStateStatus.initial;
  bool get isLoading => status == ActiveTabsStateStatus.loading;
  bool get isLoaded => status == ActiveTabsStateStatus.loaded;
  bool get isError => status == ActiveTabsStateStatus.error;
}

@immutable
class ActiveTabsState {
  final ActiveTabsStateStatus status;
  final List<ScreensEnt> tabs;
  final String? initUrlPath;
  final int currentIndex;
  final bool downHamburgerMenu;
  final FeatureDocDataEnt? featureDocDataEnt;

  const ActiveTabsState({
    this.status = ActiveTabsStateStatus.initial,
    this.tabs = const [],
    this.initUrlPath,
    this.currentIndex = 0,
    this.downHamburgerMenu = true,
    this.featureDocDataEnt,
  });

  ActiveTabsState copyWith({
    ActiveTabsStateStatus? status,
    List<ScreensEnt>? tabs,
    String? initUrlPath,
    List<Widget>? tabsBody,
    int? currentIndex,
    bool? downHamburgerMenu,
    FeatureDocDataEnt? featureDocDataEnt,
  }) {
    return ActiveTabsState(
      status: status ?? this.status,
      tabs: tabs ?? this.tabs,
      initUrlPath: initUrlPath ?? this.initUrlPath,
      currentIndex: currentIndex ?? this.currentIndex,
      downHamburgerMenu: downHamburgerMenu ?? this.downHamburgerMenu,
      featureDocDataEnt: featureDocDataEnt ?? this.featureDocDataEnt,
    );
  }
}
