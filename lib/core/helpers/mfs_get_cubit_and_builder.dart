import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

class MfsGetCubitAndBuilder {
  MfsGetCubitAndBuilder._();

  /// Fetch cubit based on screen ID, checking Firebase Remote Config for availability.
  static dynamic getCubit({required ScreensEnt screensEnt, bool show = true}) {
    switch ((screensEnt.screenId, show)) {
      case (11533, true):
        return getIt<IssueProductionOrdersCubit>();
      case (11585, true):
        return getIt<MaterialOrderReleaseCubit>();
      case (11589, true):
        return getIt<MaterialReturnCubit>();
      case (11591, true):
        return getIt<ProductionDeliveryOrderCubit>();

      default:
        return getIt<DefaultErrorPageCubit>();
    }
  }

  /// Get widget builder for each screen, checking Firebase Remote Config.
  static WidgetBuilderWithCubit? getBuilder({
    required ScreensEnt screensEnt,
    bool show = true,
  }) {
    switch ((screensEnt.screenId, show)) {
      case (11533, true):
        if (screensEnt.isAllPrevScreen) {
          return (context, cubit) =>
              BlocProvider<IssueProductionOrdersCubit>.value(
                value: cubit as IssueProductionOrdersCubit,
                child: const AllIssueProductionOrdersScreen(),
              );
        } else {
          return (context, cubit) =>
              BlocProvider<IssueProductionOrdersCubit>.value(
                value: cubit as IssueProductionOrdersCubit,
                child: const IssueProductionOrdersScreen(),
              );
        }
      case (11585, true):
        if (screensEnt.isAllPrevScreen) {
          return (context, cubit) =>
              BlocProvider<MaterialOrderReleaseCubit>.value(
                value: cubit as MaterialOrderReleaseCubit,
                child: const AllMaterialOrderReleaseScreen(),
              );
        } else {
          return (context, cubit) =>
              BlocProvider<MaterialOrderReleaseCubit>.value(
                value: cubit as MaterialOrderReleaseCubit,
                child: const MaterialOrderReleaseScreen(),
              );
        }
      case (11589, true):
        if (screensEnt.isAllPrevScreen) {
          return (context, cubit) => BlocProvider<MaterialReturnCubit>.value(
            value: cubit as MaterialReturnCubit,
            child: const AllMaterialReturnScreen(),
          );
        } else {
          return (context, cubit) => BlocProvider<MaterialReturnCubit>.value(
            value: cubit as MaterialReturnCubit,
            child: const MaterialReturnScreen(),
          );
        }
      case (11591, true):
        if (screensEnt.isAllPrevScreen) {
          return (context, cubit) => BlocProvider<ProductionDeliveryOrderCubit>.value(
            value: cubit as ProductionDeliveryOrderCubit,
            child: const AllProductionDeliveryOrderScreen(),
          );
        } else {
          return (context, cubit) => BlocProvider<ProductionDeliveryOrderCubit>.value(
            value: cubit as ProductionDeliveryOrderCubit,
            child: const ProductionDeliveryOrderScreen(),
          );
        }

      default:
        return (context, cubit) => BlocProvider<DefaultErrorPageCubit>.value(
          value: cubit as DefaultErrorPageCubit,
          child: const DefaultErrorPage(),
        );
    }
  }

  /// remove tab
  static dynamic removeTab({required ScreensEnt tab}) async {
    switch (tab.screenId) {
      // case 11533:
      //   return tab.isNewItmScreen
      //       ? await (tab.cubit as IssueProductionOrdersCubit).insert()
      //       : tab.cubit?.state.isEditing
      //           ? await (tab.cubit as IssueProductionOrdersCubit).updateDoc()
      //           : null;
      default:
        return getIt<NavigationService>()
            .navigatorKey
            .currentContext
            ?.activeTabsCubit
            .removeActiveTab(
              tab,
              reSetSideMenuTree: () => getIt<NavigationService>()
                  .navigatorKey
                  .currentContext
                  ?.appLayoutCubit
                  .reSetSideMenuTree(),
            );
    }
  }

  static bool checkRemoveTab({required ScreensEnt tab}) {
    switch (tab.screenId) {
      case 5211:
        return tab.isNewItmScreen ||
            (!tab.isNewItmScreen && tab.cubit?.state.isEditing);
      case 5214:
        return tab.isNewItmScreen ||
            (!tab.isNewItmScreen && tab.cubit?.state.isEditing);
      default:
        return tab.isNewItmScreen;
    }
  }

  ///  implement Request After Remove
  static Future<ResultEnt?> implRequestAfterRemove({
    required ScreensEnt tab,
  }) async {
    switch (tab.screenId) {
      // case 7363:
      //   return tab.isNewItmScreen
      //       ? await (tab.cubit as CustomersOrdersCubit).insert()
      //       : tab.cubit?.state.isEditing
      //       ? await (tab.cubit as CustomersOrdersCubit).updateDoc()
      //       : null;
      // case 7054:
      //   return tab.isNewItmScreen
      //       ? await (tab.cubit as SPersonDataCubit).insert()
      //       : tab.cubit?.state.isEditing
      //       ? await (tab.cubit as SPersonDataCubit).updateDoc()
      //       : null;
      default:
        return null;
    }
  }
}
