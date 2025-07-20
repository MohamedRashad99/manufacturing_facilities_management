import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';


class DetailsMaterialReturn extends StatelessWidget {
  const DetailsMaterialReturn({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MaterialReturnCubit()..initGridOnyxIxData(),

      /// Master Customer Order Body
      child: Column(
        children: [
          const HSpacer(10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: whiteColor,
              boxShadow: [
                BoxShadow(
                  color: kTextFiledColor.withOpacity(0.25),
                  blurRadius: 4,
                ),
              ],
              borderRadius: BorderRadius.circular(4),
            ),
            child: BlocBuilder<MaterialReturnCubit, MaterialReturnState>(
              builder: (context, state) {
                return Column(
                  children: [
                    Container(
                      width: context.width,
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      child: FiltersHeaderPreviousSales(
                        addNewOnPressed: () {
                          context.activeTabsCubit.addActiveTab(
                            ScreensEnt(
                              tabPath: 'AppPaths.newmaterialReturnScreen',
                              screenName: 'material_return'.tr(context),
                              tabName: 'all_material_return'.tr(context),
                              screenPath: 'AppPaths.newmaterialReturnScreen',
                              isAllPrevScreen: false,
                              isNewItmScreen: true,
                              cubit: getIt<MaterialReturnCubit>(),
                              screenId: 11589,
                              sysNo: 73,
                              builder: (context, cubit) =>
                                  BlocProvider<MaterialReturnCubit>.value(
                                    value: cubit as MaterialReturnCubit,
                                    child: const MaterialReturnScreen(),
                                  ),
                            ),
                          );
                        },
                        columnsOnyxIx: context
                            .read<MaterialReturnCubit>()
                            .columnsOnyxIx,
                        rowsOnyxIx: context
                            .read<MaterialReturnCubit>()
                            .rowsOnyxIx,
                        rowData: context.read<MaterialReturnCubit>().rowData,
                        currentYearCheckBoxOnPress: context
                            .read<MaterialReturnCubit>()
                            .changeCurrentYearCheckBoxMultipleTransfer,
                        onlyActiveCheckBoxOnPress: context
                            .read<MaterialReturnCubit>()
                            .changeOnlyActiveCheckBoxMultipleTransfer,
                        onlyNotCancelledCheckBoxOnPress: context
                            .read<MaterialReturnCubit>()
                            .changeOnlyNotCancelledCheckBoxMultipleTransfer,
                        currentYearCheckBox: context
                            .read<MaterialReturnCubit>()
                            .currentYearCheckBox,
                        onlyActiveCheckBox: context
                            .read<MaterialReturnCubit>()
                            .onlyActiveCheckBox,
                        onlyNotCancelledCheckBox: context
                            .read<MaterialReturnCubit>()
                            .onlyNotCancelledCheckBox,
                      ),
                    ),

                    /// custom grid products
                    const MaterialReturnGrid(offstage: true),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
