
import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/issue_production_orders/data/models/issue_production_orders_model.dart';
import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';
import 'package:onyx_ix/core/network/err_handler/err_handler.dart';
import 'package:onyx_ix/features/common_feature/data/model/res/feature_doc_data_model.dart';

abstract class IssueProductionOrdersRemoteDs {
  Future<Either<Failure, FeatureDocDataModel>> insert(
      {required String systemKey, required IssueProductionOrdersModel body});
}

class IssueProductionOrdersRemoteDsImpl implements IssueProductionOrdersRemoteDs {
  final ApiService apiService;

  IssueProductionOrdersRemoteDsImpl({required this.apiService});

  @override
  Future<Either<Failure, FeatureDocDataModel>> insert(
      {required String systemKey, required IssueProductionOrdersModel body}) async {
    try {
      final Response res = await apiService.post(
          endPoint: "/$systemKey${ApiEndpoints.insert}", body: body.toJson(body));
      return Right(FeatureDocDataModel.fromJson(res.data));
    } catch (e, stacktrace) {
      AppLogs.errorLog("StackTrace insert: $stacktrace");
      AppLogs.errorLog("Error in Feature insert: ${e.toString()}");
      return Left(ErrorHandler.handle(e).failure);
    }
  }
}
