
import 'package:manufacturing_facilities_management/core/helpers/mfs_get_cubit_and_builder.dart';
import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

class MfsCubitBuilder implements ModuleCubitBuilder {
  @override
  String get moduleKey => "MFS";

  @override
  dynamic getCubit({required ScreensEnt screensEnt, bool show = true}) =>
      MfsGetCubitAndBuilder.getCubit(screensEnt: screensEnt, show: show);

  @override
  WidgetBuilderWithCubit? getBuilder({required ScreensEnt screensEnt, bool show = true}) =>
      MfsGetCubitAndBuilder.getBuilder(screensEnt: screensEnt, show: show);

  @override
  Future<ResultEnt?>? removeTab(ScreensEnt tab) =>
      MfsGetCubitAndBuilder.implRequestAfterRemove(tab: tab);

  @override
  bool checkRemoveTab(ScreensEnt tab) =>
      MfsGetCubitAndBuilder.checkRemoveTab(tab: tab);
}

void registerMfsCubitBuilder() {
  GetIt.I.registerSingleton<ModuleCubitBuilder>(
    MfsCubitBuilder(),
    instanceName: 'MFS',
  );
}
