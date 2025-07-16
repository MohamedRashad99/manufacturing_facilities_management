import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/material_return/domain/entities/material_return_ent.dart';
import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

abstract class MaterialReturnCont {
  Future<Either<Failure, MaterialReturnEnt>> func({required String s});
}
