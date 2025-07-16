import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

class MaterialReturnEnt extends Equatable {
  final String? s;

  const MaterialReturnEnt({required this.s});

  @override
  List<Object?> get props => [s];
}
