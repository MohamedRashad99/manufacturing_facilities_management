import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

import '../../../controllers/issue_production_orders_cubit.dart';
class TabFromIssueProductionOrdersBody extends StatelessWidget {
  const TabFromIssueProductionOrdersBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// payment types
        BlocBuilder<IssueProductionOrdersCubit, IssueProductionOrdersState>(
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
                      hint: 'تصنيف أمر الإنتاج'.tr(context),
                      isRequired: false,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<IssueProductionOrdersCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),
                    CustomTextFieldPurchase(
                      hint: 'الرقم اليدوي'.tr(context),
                      isRequired: false,
                      fillColor: whiteColor,
                    ),
                    CustomTextFieldPurchase(
                      hint: 'عدد مرات المرفقات'.tr(context),
                      isRequired: false,
                      fillColor: whiteColor,
                    ),
                    // financial unit
                    CustomDropDownWithSearch(
                      hint: 'الموضف المسؤول'.tr(context),
                      isRequired: false,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<IssueProductionOrdersCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),
                    CustomTextFieldPurchase(
                      hint: 'نوع الوثيقة المرجعية'.tr(context),
                      isRequired: false,
                      fillColor: whiteColor,
                    ),
                    CustomTextFieldPurchase(
                      hint: 'رقم الوثيقة المرجعية'.tr(context),
                      isRequired: false,
                      fillColor: whiteColor,
                    ),
                    // sub document type
                    CustomTextFieldPurchase(
                      hint: 'رقم وثيقة احتساب التكلفة المعيارية'.tr(context),
                      isRequired: false,
                    ),
                  ],
                ),

                const HSpacer(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomTextIconButton(
                      title: 'contact_info'.tr(context),
                      icon: FontAwesomeIcons.addressCard,
                      txtColor: whiteColor,
                      iconColor: whiteColor,
                      bgColor: homeButtonColor,
                      width: 110,
                      height: 35,
                      onPressed: () {
                        // Utils.customOpenPopUpDialog(
                        //   width: context.getWidth(
                        //     ratioDesktop: 0.8,
                        //     ratioTablet: 0.65,
                        //     ratioMobile: 1,
                        //   ),
                        //   height: context.getHeight(
                        //     ratioDesktop: 0.6,
                        //     ratioTablet: 0.65,
                        //     ratioMobile: 1,
                        //   ),
                        //   context,
                        //   backgroundColor: kColapsColor,
                          // widget: const BeneficiaryDataaDialog(),
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
