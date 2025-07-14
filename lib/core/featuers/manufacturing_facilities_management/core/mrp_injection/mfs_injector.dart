import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/issue_production_orders/presentation/controllers/issue_production_orders_cubit.dart';
import 'package:onyx_ix/core/injection/injector.dart';


void mfsInitGetIt() {
  /// ✨ <<<--------------------- Issue Production Orders  ----------------------->>>
  
  getIt.registerFactory<IssueProductionOrdersCubit>(
      () => IssueProductionOrdersCubit());
}

