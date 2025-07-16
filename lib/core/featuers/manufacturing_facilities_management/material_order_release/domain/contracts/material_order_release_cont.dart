import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/material_order_release/domain/entities/material_order_release_ent.dart';
import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';
import 'package:onyx_ix/core/network/err_handler/err_handler.dart';

abstract class MaterialOrderReleaseCont {

  Future<Either<Failure, MaterialOrderReleaseEnt>> func({
    required String s,
  });

}