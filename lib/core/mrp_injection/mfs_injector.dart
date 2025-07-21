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

    /// ✨ <<<--------------------- Production Delivery Order  ----------------------->>>
    getIt.registerFactory<ProductionDeliveryOrderCubit>(() => ProductionDeliveryOrderCubit());

  }
}
