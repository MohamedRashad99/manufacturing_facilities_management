import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';





class DetailsMaterialOrderRelease extends StatelessWidget {
  const DetailsMaterialOrderRelease({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MaterialOrderReleaseCubit()..initGridOnyxIxData(),

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
            child:
                BlocBuilder<
                  MaterialOrderReleaseCubit,
                  MaterialOrderReleaseState
                >(
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
                                  tabPath:
                                      AppPaths.newmaterialOrderReleaseScreen,
                                  screenName: 'material_order_release'.tr(context),
                              tabName: 'all_material_order_release'.tr(context),
                                  screenPath:
                                      AppPaths.newmaterialOrderReleaseScreen,
                                  isAllPrevScreen: false,
                                  isNewItmScreen: true,
                                  cubit: getIt<MaterialOrderReleaseCubit>(),
                                  screenId: 11585,
                                  sysNo: 73,
                                  builder: (context, cubit) =>
                                      BlocProvider<
                                        MaterialOrderReleaseCubit
                                      >.value(
                                        value:
                                            cubit as MaterialOrderReleaseCubit,
                                        child:
                                            const MaterialOrderReleaseScreen(),
                                      ),
                                ),
                              );
                            },
                            columnsOnyxIx: context
                                .read<MaterialOrderReleaseCubit>()
                                .columnsOnyxIx,
                            rowsOnyxIx: context
                                .read<MaterialOrderReleaseCubit>()
                                .rowsOnyxIx,
                            rowData: context
                                .read<MaterialOrderReleaseCubit>()
                                .rowData,
                            currentYearCheckBoxOnPress: context
                                .read<MaterialOrderReleaseCubit>()
                                .changeCurrentYearCheckBoxMultipleTransfer,
                            onlyActiveCheckBoxOnPress: context
                                .read<MaterialOrderReleaseCubit>()
                                .changeOnlyActiveCheckBoxMultipleTransfer,
                            onlyNotCancelledCheckBoxOnPress: context
                                .read<MaterialOrderReleaseCubit>()
                                .changeOnlyNotCancelledCheckBoxMultipleTransfer,
                            currentYearCheckBox: context
                                .read<MaterialOrderReleaseCubit>()
                                .currentYearCheckBox,
                            onlyActiveCheckBox: context
                                .read<MaterialOrderReleaseCubit>()
                                .onlyActiveCheckBox,
                            onlyNotCancelledCheckBox: context
                                .read<MaterialOrderReleaseCubit>()
                                .onlyNotCancelledCheckBox,
                          ),
                        ),

                        /// custom grid products
                        const MaterialOrderReleaseGrid(offstage: true),
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
