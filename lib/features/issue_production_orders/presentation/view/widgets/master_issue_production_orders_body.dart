import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

import '../../controllers/issue_production_orders_cubit.dart';
import '../../controllers/issue_production_orders_state.dart';
import 'ip_action_bar.dart';
import 'ip_tabs2.dart';
import 'issue_production_orders_tabs.dart';
import 'new tabs/tab_devices_used_user_em__body.dart';
import 'new tabs/tab_extra2_issue_production_orders_body.dart';
import 'new tabs/tab_extra_issue_production_orders_body.dart';
import 'new tabs/tab_from_accounts_issue_production_orders_body copy.dart';
import 'new tabs/tab_from_issue_production_orders_body.dart';
import 'new tabs/tab_main_issue_production_orders_body.dart';
class MasterIssueProductionOrdersBody extends StatelessWidget {
  const MasterIssueProductionOrdersBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppLayoutCubit, AppLayoutState>(
      builder: (context, state) {
        return Stack(
          children: [
            SingleChildScrollView(
              child: Form(
                key: context.read<IssueProductionOrdersCubit>().formKey,
                child: Column(
                  children: [
                    const IpActionBar(),

                    /// Customer Orders Tabs
                    const IssueProductionOrdersTabs(),

                    /// Master Customer Order Body
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 12),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
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
                              int currentTab = state.selectCurrentTab;
                              return Column(
                                key: key,
                                children: [
                                  switch (currentTab) {
                                    0 =>
                                      const TabMainIssueProductionOrdersBody(),
                                    1 =>
                                      const TabFromIssueProductionOrdersBody(),
                                    2 =>
                                      const TabExtra2IssueProductionOrdersBody(),
                                    3 =>
                                      const TabExtraIssueProductionOrdersBody(),

                                    _ =>
                                      const TabMainIssueProductionOrdersBody(),
                                  },
                                  // CustomGridItemsMultipleStockTransfer(
                                  //   offstage: currentTab != 0,
                                  // ),
                                ],
                              );
                            },
                          ),
                    ),

                    const HSpacer(20),
                    const IpTabs2(),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 12),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
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
                              int currentTab2 = state.selectCurrentTab2;
                              return Column(
                                key: key,
                                children: [
                                  switch (currentTab2) {
                                    0 =>
                                      const TabFromAccountsEmployeesBody(),
                                    1 => const TabFromAccountsEmployeesBody(),
                                    2 => const TabDevicesUsedEmBody(),
                                    // 4 =>
                                    // const TabDevicesUsedEmBody(),
                                    _ =>
                                      const TabFromAccountsEmployeesBody(),
                                  },
                                  // CustomGridItemsMultipleStockTransfer(
                                  //   offstage: currentTab != 0,
                                  // ),
                                ],
                              );
                            },
                          ),
                    ),
                  ],
                ),
              ),
            ),

            // const CustomTabBarInStockRequestWidget()
          ],
        );
      },
    );
  }
}
