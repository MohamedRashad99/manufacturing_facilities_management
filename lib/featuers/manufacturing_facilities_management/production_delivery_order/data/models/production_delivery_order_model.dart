// ignore_for_file: must_be_immutable
import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/production_delivery_order/domain/entities/production_delivery_order_ent.dart';
import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

class ProductionDeliveryOrderModel extends Equatable {
  String? s;

  ProductionDeliveryOrderModel({this.s});

  ProductionDeliveryOrderModel.fromJson(Map<String, dynamic> json) {
    s = json['s'];
  }

  Map<String, dynamic> toJson(ProductionDeliveryOrderModel productionDeliveryOrderModel) {
    Map<String, dynamic> json = {
      's': productionDeliveryOrderModel.s,
    };
    return json;
  }

  // Mapping model to entity
  ProductionDeliveryOrderEnt toEntity() {
    return ProductionDeliveryOrderEnt(
      s: s,
    );
  }

  @override
  List<Object?> get props => [s];
}