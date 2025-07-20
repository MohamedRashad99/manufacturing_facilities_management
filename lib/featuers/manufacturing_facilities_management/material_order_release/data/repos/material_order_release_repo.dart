import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/issue_production_orders/data/datasources/issue_production_orders_remote_ds.dart';
import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/issue_production_orders/data/models/issue_production_orders_model.dart';
import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/issue_production_orders/domain/contracts/issue_production_orders_cont.dart';
import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';
import 'package:onyx_ix/core/network/err_handler/err_handler.dart';
import 'package:onyx_ix/features/common_feature/domain/entities/feature_doc_data_ent.dart';

class IssueProductionOrdersRepo implements IssueProductionOrdersCont {
  final IssueProductionOrdersRemoteDs issueProductionOrdersRemoteDs;

  IssueProductionOrdersRepo(this.issueProductionOrdersRemoteDs);

  @override
  Future<Either<Failure, FeatureDocDataEnt>> insert(
      {required String systemKey, required IssueProductionOrdersModel body}) async {
    try {
      final either = await issueProductionOrdersRemoteDs.insert(
          systemKey: systemKey, body: body);
      return either.map((model) => model.toEntity());
    } catch (e, stacktrace) {
      AppLogs.errorLog("StackTrace: $stacktrace");
      AppLogs.errorLog("Error in FeatureRepo - insert(): ${e.toString()}");
      return Left(ErrorHandler.handle(e).failure);
    }
  }
}