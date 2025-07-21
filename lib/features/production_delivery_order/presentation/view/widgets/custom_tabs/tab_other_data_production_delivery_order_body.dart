import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';


class TabOtherDataProductionDeliveryOrderBody extends StatelessWidget {
  const TabOtherDataProductionDeliveryOrderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// payment types
        BlocBuilder<ProductionDeliveryOrderCubit, ProductionDeliveryOrderState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HSpacer(10),
                FlexibleWrapWidget(
                  itemWidth: context.getWidth(
                    ratioDesktop: 0.13,
                    ratioMobile: 0.9,
                    ratioTablet: 0.3,
                  ),

                  children: [
                    // year
                    CustomDropDownWithSearch(
                      hint: 'hint_document_type'.tr(context),
                      isRequired: false,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<ProductionDeliveryOrderCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),
                    CustomDropDownWithSearch(
                      hint: 'hint_reference_document_number'.tr(context),
                      isRequired: false,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<ProductionDeliveryOrderCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),
                    
                 
                    CustomTextFieldPurchase(
                      hint: 'hint_reference_document_date'.tr(context),
                      isRequired: false,
                      fillColor: kColapsColor,
                    ),
                    CustomDropDownWithSearch(
                      hint: 'document_type'.tr(context),
                      isRequired: false,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<ProductionDeliveryOrderCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),
                    CustomTextFieldPurchase(
                      hint: 'kind'.tr(context),
                      isRequired: false,
                      fillColor: kColapsColor,
                    ),
                   
                  ],
                ),

                const HSpacer(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomTextIconButton(
                      title: 'تنفيذ'.tr(context),
                      icon: FontAwesomeIcons.addressCard,
                      txtColor: whiteColor,
                      iconColor: whiteColor,
                      bgColor: homeButtonColor,
                      width: 110,
                      height: 35,
                      onPressed: () {
                        // Utils.customOpenPopUpDialog(
                        //   width: context.getWidth(
                        //       ratioDesktop: 0.8,
                        //       ratioTablet: 0.65,
                        //       ratioMobile: 1),
                        //   height: context.getHeight(
                        //       ratioDesktop: 0.6,
                        //       ratioTablet: 0.65,
                        //       ratioMobile: 1),
                        //   context,
                        //   backgroundColor: kColapsColor,
                        //   widget: const BeneficiaryDataaDialog(),
                        // );
                      },
                    ),
                  ],
                ),

                /// addition form && products
              ],
            );
          },
        ),
      ],
    );
  }
}
