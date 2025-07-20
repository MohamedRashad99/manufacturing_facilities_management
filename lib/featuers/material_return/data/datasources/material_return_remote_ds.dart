import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';
import 'package:manufacturing_facilities_management/featuers/material_return/data/models/material_return_model.dart';

abstract class MaterialReturnRemoteDs {
  Future<Either<Failure, FeatureDocDataModel>> insert(
      {required String systemKey, required MaterialReturnModel body});
}

class MaterialReturnRemoteDsImpl implements MaterialReturnRemoteDs {
  final ApiService apiService;

  MaterialReturnRemoteDsImpl({required this.apiService});

  @override
  Future<Either<Failure, FeatureDocDataModel>> insert(
      {required String systemKey, required MaterialReturnModel body}) async {
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
