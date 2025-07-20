
import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/core/helpers/mfs_get_cubit_and_builder.dart';

import '../src/onyx_ix_app_export.dart';

class GetCubitAndBuilder {
  GetCubitAndBuilder._();

  /// Fetch cubit based on screen ID, checking Firebase Remote Config for availability.
  static dynamic getCubit({required ScreensEnt screensEnt, bool show = true}) {
    String moduleKey = screensEnt.screenPath.split("/")[1];
    switch (moduleKey) {
      case "MFS":
        return MfsGetCubitAndBuilder.getCubit(screensEnt: screensEnt, show: show);
      default:
        if (screensEnt.screenId == 0) {
          return getIt<DashboardCubit>()..getDashboardData();
        } else if (screensEnt.screenId == -1) {
          return getIt<AppLayoutCubit>();
        } else {
          return getIt<DefaultErrorPageCubit>();
        }

    }
  }

  /// Get widget builder for each screen, checking Firebase Remote Config.
  static WidgetBuilderWithCubit? getBuilder(
      {required ScreensEnt screensEnt, bool show = true}) {
    String moduleKey = screensEnt.screenPath.split("/")[1];

    switch (moduleKey) {
      case "MFS":
        return MfsGetCubitAndBuilder.getBuilder(
            screensEnt: screensEnt, show: show);
      default:
        if (screensEnt.screenId == 0) {
          return (context, cubit) => BlocProvider<DashboardCubit>.value(
                value: cubit as DashboardCubit,
                child: const DashboardView(),
              );
        } else if (screensEnt.screenId == -1) {
          return (context, cubit) => BlocProvider<AppLayoutCubit>.value(
                value: cubit as AppLayoutCubit,
                child: const TotalAlertDesktop(),
              );
        } else {
          return (context, cubit) => BlocProvider<DefaultErrorPageCubit>.value(
                value: cubit as DefaultErrorPageCubit,
                child: const DefaultErrorPage(),
              );
        }
    }
  }

  ///  implement Request After Remove
  static Future<ResultEnt?> implRequestAfterRemove(
      {required ScreensEnt tab}) async {
    String moduleKey = tab.screenPath.split("/")[1];
    switch (moduleKey) {
      case "MFS":
        return MfsGetCubitAndBuilder.removeTab(tab: tab);
      default:
        return null;
    }
  }

  static bool checkRemoveTab({required ScreensEnt tab}) {
    String moduleKey = tab.screenPath.split("/")[1];
    switch (moduleKey) {
      case "MFS":
        return MfsGetCubitAndBuilder.checkRemoveTab(tab: tab);
      default:
        return tab.isNewItmScreen;
    }
  }
}
