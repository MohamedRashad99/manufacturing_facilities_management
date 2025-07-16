import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/issue_production_orders/presentation/controllers/issue_production_orders_cubit.dart';
import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/issue_production_orders/presentation/controllers/issue_production_orders_state.dart';
import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/issue_production_orders/presentation/view/screens/issue_production_orders_screen.dart';
import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/issue_production_orders/presentation/view/widgets/issue_production_orders_grid.dart';
import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';
class DetailsIssueProductionOrders extends StatelessWidget {
  const DetailsIssueProductionOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => IssueProductionOrdersCubit()..initGridOnyxIxData(),

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
                  IssueProductionOrdersCubit,
                  IssueProductionOrdersState
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
                                      '',
                                  screenName: 'issue_production_orders'.tr(
                                    context,
                                  ),
                                  tabName: 'all_issue_production_orders'.tr(
                                    context,
                                  ),
                                  screenPath:
                                      '',
                                  isAllPrevScreen: false,
                                  isNewItmScreen: true,
                                  cubit: getIt<IssueProductionOrdersCubit>(),
                                  screenId: 11533,
                                  sysNo: 73,
                                  builder: (context, cubit) =>
                                      BlocProvider<
                                        IssueProductionOrdersCubit
                                      >.value(
                                        value:
                                            cubit as IssueProductionOrdersCubit,
                                        child:
                                            const IssueProductionOrdersScreen(),
                                      ),
                                ),
                              );
                            },
                            columnsOnyxIx: context
                                .read<IssueProductionOrdersCubit>()
                                .columnsOnyxIx,
                            rowsOnyxIx: context
                                .read<IssueProductionOrdersCubit>()
                                .rowsOnyxIx,
                            rowData: context
                                .read<IssueProductionOrdersCubit>()
                                .rowData,
                            // currentYearCheckBoxOnPress: context
                            //     .read<IssueProductionOrdersCubit>()
                            //     .changeCurrentYearCheckBoxMultipleTransfer,
                            // onlyActiveCheckBoxOnPress: context
                            //     .read<IssueProductionOrdersCubit>()
                            //     .changeOnlyActiveCheckBoxMultipleTransfer,
                            // onlyNotCancelledCheckBoxOnPress: context
                            //     .read<IssueProductionOrdersCubit>()
                            //     .changeOnlyNotCancelledCheckBoxMultipleTransfer,
                            // currentYearCheckBox: context
                            //     .read<IssueProductionOrdersCubit>()
                            //     .currentYearCheckBox,
                            // onlyActiveCheckBox: context
                            //     .read<IssueProductionOrdersCubit>()
                            //     .onlyActiveCheckBox,
                            // onlyNotCancelledCheckBox: context
                            //     .read<IssueProductionOrdersCubit>()
                            //     .onlyNotCancelledCheckBox,
                          ),
                        ),

                        /// custom grid products
                        const IssueProductionOrdersGrid(offstage: false),
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
