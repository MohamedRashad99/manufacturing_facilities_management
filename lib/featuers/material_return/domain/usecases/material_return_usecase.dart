import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/material_return/domain/contracts/material_return_cont.dart';
import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/material_return/domain/entities/material_return_ent.dart';
import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

class MaterialReturnUseCase {
  final MaterialReturnCont materialReturnCont;

  MaterialReturnUseCase(this.materialReturnCont);

  Future<Either<Failure, MaterialReturnEnt>> call({required String s}) async {
    return await materialReturnCont.func(s: s);
  }
}
