import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';
import 'package:manufacturing_facilities_management/featuers/issue_production_orders/data/models/issue_production_orders_model.dart';
import 'package:manufacturing_facilities_management/featuers/issue_production_orders/domain/contracts/issue_production_orders_cont.dart';
class IssueProductionOrdersUseCase {
  final IssueProductionOrdersCont incomingStockOrderCont;

  IssueProductionOrdersUseCase(this.incomingStockOrderCont);

  Future<Either<Failure, FeatureDocDataEnt>> call({
    required String systemKey,
    required IssueProductionOrdersModel body,
  }) async {
    return await incomingStockOrderCont.insert(
      systemKey: systemKey,
      body: body,
    );
  }
}
