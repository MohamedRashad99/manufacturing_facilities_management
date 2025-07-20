//
// import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/production_delivery_order/data/datasources/production_delivery_order_remote_ds.dart';
// import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/production_delivery_order/data/models/production_delivery_order_model.dart';
// import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/production_delivery_order/domain/contracts/production_delivery_order_cont.dart';
// import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/production_delivery_order/domain/entities/production_delivery_order_ent.dart';
// import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';
//
// abstract class ProductionDeliveryOrderRepo implements ProductionDeliveryOrderCont {
//   final ProductionDeliveryOrderRemoteDs productionDeliveryOrderRemoteDs;
//
//   ProductionDeliveryOrderRepo(this.productionDeliveryOrderRemoteDs);
//
//   @override
//   Future<Either<Failure, ProductionDeliveryOrderEnt>> insert(
//       {required String systemKey, required ProductionDeliveryOrderModel body}) async {
//     try {
//       final either = await productionDeliveryOrderRemoteDs.insert(
//           systemKey: systemKey, body: body);
//       return either.map((model) => model.toEntity());
//     } catch (e, stacktrace) {
//       AppLogs.errorLog("StackTrace: $stacktrace");
//       AppLogs.errorLog("Error in FeatureRepo - insert(): ${e.toString()}");
//       return Left(ErrorHandler.handle(e).failure);
//     }
//   }
// }