import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/issue_production_orders/presentation/controllers/issue_production_orders_cubit.dart';
import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/issue_production_orders/presentation/view/screens/all_issue_production_orders_screen.dart';
import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/issue_production_orders/presentation/view/screens/issue_production_orders_screen.dart';
import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/material_return/presentation/controllers/material_return_cubit.dart';
import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/material_return/presentation/view/screens/all_material_return_screen.dart';
import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/material_return/presentation/view/screens/material_return_screen.dart';
import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

import 'package:onyx_ix/core/routing/app_pages.dart';

import '../../material_order_release/presentation/presentation.dart';



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
      

      default:
        return getIt<DefaultErrorPageCubit>();
    }
  }

  /// Get widget builder for each screen, checking Firebase Remote Config.
  static WidgetBuilderWithCubit? getBuilder(
      {required ScreensEnt screensEnt, bool show = true}) {
    switch ((screensEnt.screenId, show)) {
            case (11533, true):
        if (screensEnt.isAllPrevScreen) {
          return (context, cubit) => BlocProvider<IssueProductionOrdersCubit>.value(
                value: cubit as IssueProductionOrdersCubit,
                child: const AllIssueProductionOrdersScreen(),
              );
              
        } 
        
        else {
          return (context, cubit) => BlocProvider<IssueProductionOrdersCubit>.value(
                value: cubit as IssueProductionOrdersCubit,
                child: const IssueProductionOrdersScreen(),
              );
        }
          case (11585, true):
        if (screensEnt.isAllPrevScreen) {
          return (context, cubit) => BlocProvider<MaterialOrderReleaseCubit>.value(
                value: cubit as MaterialOrderReleaseCubit,
                child: const AllMaterialOrderReleaseScreen(),
              );
        } else {
          return (context, cubit) => BlocProvider<MaterialOrderReleaseCubit>.value(
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
      //       ? await (tab.cubit as IncomingStockOrdersCubit).insert()
      //       : tab.cubit?.state.isEditing
      //           ? await (tab.cubit as IncomingStockOrdersCubit).updateDoc()
      //           : null;
      // case 5214:
      //   return tab.isNewItmScreen
      //       ? await (tab.cubit as OutStockRequestCubit).insert()
      //       : tab.cubit?.state.isEditing
      //           ? await (tab.cubit as OutStockRequestCubit).updateDoc()
      //           : null;
      default:
        return navigatorKey.currentContext?.activeTabsCubit.removeActiveTab(tab,
            reSetSideMenuTree: () => navigatorKey.currentContext?.appLayoutCubit
                .reSetSideMenuTree());
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
}
