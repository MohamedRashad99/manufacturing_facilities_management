// import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/production_delivery_order/data/models/production_delivery_order_model.dart';
// import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';
//
//
// abstract class ProductionDeliveryOrderRemoteDs {
//   Future<Either<Failure, ProductionDeliveryOrderModel>> insert(
//       {required String systemKey, required ProductionDeliveryOrderModel body});
// }
//
// class MaterialReturnRemoteDsImpl implements ProductionDeliveryOrderRemoteDs {
//   final ApiService apiService;
//
//   MaterialReturnRemoteDsImpl({required this.apiService});
//
//   @override
//   Future<Either<Failure, ProductionDeliveryOrderModel>> insert(
//       {required String systemKey, required ProductionDeliveryOrderModel body}) async {
//     try {
//       final Response res = await apiService.post(
//           endPoint: "/$systemKey${ApiEndpoints.insert}", body: body.toJson(body));
//       return Right(ProductionDeliveryOrderModel.fromJson(res.data));
//     } catch (e, stacktrace) {
//       AppLogs.errorLog("StackTrace insert: $stacktrace");
//       AppLogs.errorLog("Error in Feature insert: ${e.toString()}");
//       return Left(ErrorHandler.handle(e).failure);
//     }
//   }
// }