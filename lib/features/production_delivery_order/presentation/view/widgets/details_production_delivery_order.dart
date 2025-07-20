import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

class DetailsProductionDeliveryOrder extends StatelessWidget {
  const DetailsProductionDeliveryOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProductionDeliveryOrderCubit()..initGridOnyxIxData(),

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
                  ProductionDeliveryOrderCubit,
                  ProductionDeliveryOrderState
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
                                      'AppPaths.newmaterialOrderReleaseScreen',
                                  screenName: 'material_order_release'.tr(
                                    context,
                                  ),
                                  tabName: 'all_material_order_release'.tr(
                                    context,
                                  ),
                                  screenPath:
                                      'AppPaths.newmaterialOrderReleaseScreen',
                                  isAllPrevScreen: false,
                                  isNewItmScreen: true,
                                  cubit: getIt<ProductionDeliveryOrderCubit>(),
                                  screenId: 11585,
                                  sysNo: 73,
                                  builder: (context, cubit) =>
                                      BlocProvider<
                                        ProductionDeliveryOrderCubit
                                      >.value(
                                        value:
                                            cubit
                                                as ProductionDeliveryOrderCubit,
                                        child:
                                            const ProductionDeliveryOrderScreen(),
                                      ),
                                ),
                              );
                            },
                            columnsOnyxIx: context
                                .read<ProductionDeliveryOrderCubit>()
                                .columnsOnyxIx,
                            rowsOnyxIx: context
                                .read<ProductionDeliveryOrderCubit>()
                                .rowsOnyxIx,
                            rowData: context
                                .read<ProductionDeliveryOrderCubit>()
                                .rowData,
                            currentYearCheckBoxOnPress: context
                                .read<ProductionDeliveryOrderCubit>()
                                .changeCurrentYearCheckBoxMultipleTransfer,
                            onlyActiveCheckBoxOnPress: context
                                .read<ProductionDeliveryOrderCubit>()
                                .changeOnlyActiveCheckBoxMultipleTransfer,
                            onlyNotCancelledCheckBoxOnPress: context
                                .read<ProductionDeliveryOrderCubit>()
                                .changeOnlyNotCancelledCheckBoxMultipleTransfer,
                            currentYearCheckBox: context
                                .read<ProductionDeliveryOrderCubit>()
                                .currentYearCheckBox,
                            onlyActiveCheckBox: context
                                .read<ProductionDeliveryOrderCubit>()
                                .onlyActiveCheckBox,
                            onlyNotCancelledCheckBox: context
                                .read<ProductionDeliveryOrderCubit>()
                                .onlyNotCancelledCheckBox,
                          ),
                        ),

                        /// custom grid products
                        const ProductionDeliveryOrderGrid(offstage: true),
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
