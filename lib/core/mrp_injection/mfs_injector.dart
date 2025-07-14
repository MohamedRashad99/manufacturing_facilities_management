import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/issue_production_orders/presentation/controllers/issue_production_orders_cubit.dart';
import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

class MfsInitGetIt{
  static void init() {
    /// ✨ <<<--------------------- Issue Production Orders  ----------------------->>>

    getIt.registerFactory<IssueProductionOrdersCubit>(
            () => IssueProductionOrdersCubit());
  }
}


