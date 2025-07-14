// ignore_for_file: must_be_immutable

import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/issue_production_orders/domain/entities/issue_production_orders_ent.dart';
import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

class IssueProductionOrdersModel extends Equatable {
  String? s;

  IssueProductionOrdersModel({this.s});

  IssueProductionOrdersModel.fromJson(Map<String, dynamic> json) {
    s = json['s'];
  }

  Map<String, dynamic> toJson(IssueProductionOrdersModel issueProductionOrdersModel) {
    Map<String, dynamic> json = {
      's': issueProductionOrdersModel.s,
    };
    return json;
  }

  // Mapping model to entity
  IssueProductionOrdersEnt toEntity() {
    return IssueProductionOrdersEnt(
      s: s,
    );
  }

  @override
  List<Object?> get props => [s];
}