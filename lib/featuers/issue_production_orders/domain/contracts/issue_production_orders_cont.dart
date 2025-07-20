import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';
import 'package:manufacturing_facilities_management/featuers/issue_production_orders/data/models/issue_production_orders_model.dart';
abstract class IssueProductionOrdersCont {
  Future<Either<Failure, FeatureDocDataEnt>> insert(
      {required String systemKey, required IssueProductionOrdersModel body});
}
