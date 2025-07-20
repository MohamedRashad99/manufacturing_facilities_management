import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

class IssueProductionOrdersEnt extends Equatable {
  final String? s;

  const IssueProductionOrdersEnt({required this.s});

  @override
  List<Object?> get props => [s];
}
