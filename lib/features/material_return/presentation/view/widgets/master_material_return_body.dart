
import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

class MasterMaterialReturnBody extends StatelessWidget {
  const MasterMaterialReturnBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppLayoutCubit, AppLayoutState>(
      builder: (context, state) {
        return Stack(
          children: [
            SingleChildScrollView(
              child: Form(
                key: context.read<MaterialReturnCubit>().formKey,
                child: Column(
                  children: [
                    const MrActionBar(),

                    /// Customer Orders Tabs
                    const MaterialReturnTabs(),

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
                      child: BlocBuilder<MaterialReturnCubit, MaterialReturnState>(
                        builder: (context, state) {
                          int currentTab = state.selectCurrentTab;
                          return Column(
                            key: key,
                            children: [
                              switch (currentTab) {
                                0 => const TabMainMaterialReturnBody(),
                                1 => const TabOtherDataMaterialReturnBody(),
                                2 =>
                                  const TabSalesBurdensDataMaterialReturnBody(),

                                // 3 =>
                                //   const TabExtraIssueProductionOrdersBody(),
                                _ => const TabMainMaterialReturnBody(),
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
                          BlocBuilder<MaterialReturnCubit, MaterialReturnState>(
                            builder: (context, state) {
                              return Column(
                                key: key,
                                children: [CustomGridMaterialReturn()],
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
