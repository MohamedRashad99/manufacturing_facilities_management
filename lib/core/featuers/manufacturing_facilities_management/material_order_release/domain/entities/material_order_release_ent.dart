import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

class MaterialOrderReleaseEnt extends Equatable {
  final String? s;

  const MaterialOrderReleaseEnt({required this.s});

  @override
  List<Object?> get props => [s];
}
