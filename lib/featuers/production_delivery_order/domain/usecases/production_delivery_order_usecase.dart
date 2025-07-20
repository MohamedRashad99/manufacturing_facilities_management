import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/production_delivery_order/domain/contracts/production_delivery_order_cont.dart';
import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/production_delivery_order/domain/entities/production_delivery_order_ent.dart';
import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';
class ProductionDeliveryOrderUseCase {
  final ProductionDeliveryOrderCont productionDeliveryOrderCont;

  ProductionDeliveryOrderUseCase(this.productionDeliveryOrderCont);

  Future<Either<Failure, ProductionDeliveryOrderEnt>> call({
    required String s,
  }) async {
    return await productionDeliveryOrderCont.func(s: s);
  }
}
