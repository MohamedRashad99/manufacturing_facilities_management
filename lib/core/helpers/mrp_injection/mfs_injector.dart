import 'package:manufacturing_facilities_management/featuers/issue_production_orders/presentation/controllers/issue_production_orders_cubit.dart';
import 'package:manufacturing_facilities_management/featuers/material_order_release/presentation/controllers/material_order_release_cubit.dart';
import 'package:manufacturing_facilities_management/featuers/material_return/presentation/controllers/material_return_cubit.dart';
import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

class MfsInitGetIt {
  static void init() {
    /// ✨ <<<--------------------- Issue Production Orders  ----------------------->>>

    getIt.registerFactory<IssueProductionOrdersCubit>(
      () => IssueProductionOrdersCubit(),
    );

    /// ✨ <<<--------------------- Material Order Release  ----------------------->>>
    getIt.registerFactory<MaterialOrderReleaseCubit>(
      () => MaterialOrderReleaseCubit(),
    );

    /// ✨ <<<--------------------- Material Return  ----------------------->>>
    getIt.registerFactory<MaterialReturnCubit>(() => MaterialReturnCubit());
  }
}
