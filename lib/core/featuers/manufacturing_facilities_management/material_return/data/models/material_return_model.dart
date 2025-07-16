// ignore_for_file: must_be_immutable
import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/material_return/domain/entities/material_return_ent.dart';
import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

class MaterialReturnModel extends Equatable {
  String? s;

  MaterialReturnModel({this.s});

  MaterialReturnModel.fromJson(Map<String, dynamic> json) {
    s = json['s'];
  }

  Map<String, dynamic> toJson(MaterialReturnModel materialReturnModel) {
    Map<String, dynamic> json = {'s': materialReturnModel.s};
    return json;
  }

  // Mapping model to entity
  MaterialReturnEnt toEntity() {
    return MaterialReturnEnt(s: s);
  }

  @override
  List<Object?> get props => [s];
}
