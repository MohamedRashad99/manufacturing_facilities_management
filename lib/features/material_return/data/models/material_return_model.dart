// // ignore_for_file: must_be_immutable
// import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';
// import 'package:manufacturing_facilities_management/featuers/material_return/domain/entities/material_return_ent.dart';
//
// class MaterialReturnModel extends Equatable {
//   String? s;
//
//   MaterialReturnModel({this.s});
//
//   MaterialReturnModel.fromJson(Map<String, dynamic> json) {
//     s = json['s'];
//   }
//
//   Map<String, dynamic> toJson(MaterialReturnModel materialReturnModel) {
//     Map<String, dynamic> json = {'s': materialReturnModel.s};
//     return json;
//   }
//
//   // Mapping model to entity
//   MaterialReturnEnt toEntity() {
//     return MaterialReturnEnt(s: s);
//   }
//
//   @override
//   List<Object?> get props => [s];
// }
