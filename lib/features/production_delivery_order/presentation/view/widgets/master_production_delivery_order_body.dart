import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

class MasterProductionDeliveryOrderBody extends StatelessWidget {
  const MasterProductionDeliveryOrderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppLayoutCubit, AppLayoutState>(
      builder: (context, state) {
        return Stack(
          children: [
            SingleChildScrollView(
              child: Form(
                key: context.read<ProductionDeliveryOrderCubit>().formKey,
                child: Column(
                  children: [
                    const PdActionBar(),

                    /// Customer Orders Tabs
                    const ProductionDeliveryOrderTabs(),

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
                            ProductionDeliveryOrderCubit,
                            ProductionDeliveryOrderState
                          >(
                            builder: (context, state) {
                              int currentTab = state.selectCurrentTab;
                              return Column(
                                key: key,
                                children: [
                                  switch (currentTab) {
                                    0 =>
                                      const TabMainProductionDeliveryOrderBody(),
                                    1 =>
                                      const TabOtherDataProductionDeliveryOrderBody(),
                                    2 =>
                                      const TabSalesBurdensProductionDeliveryOrderBody(),

                                    // 3 =>
                                    //   const TabExtraIssueProductionOrdersBody(),
                                    _ =>
                                      const TabMainProductionDeliveryOrderBody(),
                                  },
                                ],
                              );
                            },
                          ),
                    ),
                    const HSpacer(10),
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
                            ProductionDeliveryOrderCubit,
                            ProductionDeliveryOrderState
                          >(
                            builder: (context, state) {
                              return Column(
                                key: key,
                                children: [CustomGridProductionDeliveryOrder()],
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
