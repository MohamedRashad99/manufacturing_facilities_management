import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

class MasterMaterialOrderReleaseBody extends StatelessWidget {
  const MasterMaterialOrderReleaseBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppLayoutCubit, AppLayoutState>(
      builder: (context, state) {
        return Stack(
          children: [
            SingleChildScrollView(
              child: Form(
                key: context.read<MaterialOrderReleaseCubit>().formKey,
                child: Column(
                  children: [
                    const MorActionBar(),

                    /// Customer Orders Tabs
                    const MaterialOrderReleaseTabs(),

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
                            MaterialOrderReleaseCubit,
                            MaterialOrderReleaseState
                          >(
                            builder: (context, state) {
                              int currentTab = state.selectCurrentTab;
                              return Column(
                                key: key,
                                children: [
                                  switch (currentTab) {
                                    0 =>
                                      const TabMainMaterialOrderReleaseBody(),
                                    1 =>
                                      const TabOtherDataMaterialOrderReleaseBody(),
                                    2 =>
                                      const TabSalesBurdensMaterialOrderReleaseBody(),

                                    // 3 =>
                                    //   const TabExtraIssueProductionOrdersBody(),
                                    _ =>
                                      const TabMainMaterialOrderReleaseBody(),
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
                            MaterialOrderReleaseCubit,
                            MaterialOrderReleaseState
                          >(
                            builder: (context, state) {
                              return Column(
                                key: key,
                                children: [CustomGridMaterialOrderRelease()],
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
