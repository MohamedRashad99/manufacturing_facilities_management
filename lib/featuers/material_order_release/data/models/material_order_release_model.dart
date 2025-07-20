// ignore_for_file: must_be_immutable
import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';
import 'package:manufacturing_facilities_management/featuers/material_order_release/domain/entities/material_order_release_ent.dart';

class MaterialOrderReleaseModel extends Equatable {
  String? s;

  MaterialOrderReleaseModel({this.s});

  MaterialOrderReleaseModel.fromJson(Map<String, dynamic> json) {
    s = json['s'];
  }

  Map<String, dynamic> toJson(MaterialOrderReleaseModel materialOrderReleaseModel) {
    Map<String, dynamic> json = {
      's': materialOrderReleaseModel.s,
    };
    return json;
  }

  // Mapping model to entity
  MaterialOrderReleaseEnt toEntity() {
    return MaterialOrderReleaseEnt(
      s: s,
    );
  }

  @override
  List<Object?> get props => [s];
}