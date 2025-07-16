import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

abstract class IssueProductionOrdersCont {
  Future<Either<Failure, FeatureDocDataEnt>> insert(
      {required String systemKey, required IssueProductionOrdersModel body});
}
