import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/material_return/data/datasources/material_return_remote_ds.dart';
import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/material_return/data/models/material_return_model.dart';
import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/material_return/domain/contracts/material_return_cont.dart';
import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/material_return/domain/entities/material_return_ent.dart';
import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

class MaterialReturnRepo implements MaterialReturnCont {
  final MaterialReturnRemoteDs issueProductionOrdersRemoteDs;

  MaterialReturnRepo(this.issueProductionOrdersRemoteDs);

  @override
  Future<Either<Failure, FeatureDocDataEnt>> insert({
    required String systemKey,
    required MaterialReturnModel body,
  }) async {
    try {
      final either = await issueProductionOrdersRemoteDs.insert(
        systemKey: systemKey,
        body: body,
      );
      return either.map((model) => model.toEntity());
    } catch (e, stacktrace) {
      AppLogs.errorLog("StackTrace: $stacktrace");
      AppLogs.errorLog("Error in FeatureRepo - insert(): ${e.toString()}");
      return Left(ErrorHandler.handle(e).failure);
    }
  }

  @override
  Future<Either<Failure, MaterialReturnEnt>> func({required String s}) {
    // TODO: implement func
    throw UnimplementedError();
  }
}
