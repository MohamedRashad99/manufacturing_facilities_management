
import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

class TabMainProductionDeliveryOrderBody extends StatelessWidget {
  const TabMainProductionDeliveryOrderBody({super.key});

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
                    CustomTextFieldPurchase(
                      hint: 'year'.tr(context),
                      isRequired: true,
                      fillColor: kColapsColor,
                    ),
                    CustomDropDownWithSearch(
                      hint: 'financial_unit'.tr(context),
                      isRequired: true,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<ProductionDeliveryOrderCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),
                    CustomDropDownWithSearch(
                      hint: 'hint_sub_document_type'.tr(context),
                      isRequired: true,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<ProductionDeliveryOrderCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),
                    CustomDropDownWithSearch(
                      hint: 'رقم صالة الإنتاج'.tr(context),
                      isRequired: true,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<ProductionDeliveryOrderCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),
                    CustomTextFieldPurchase(
                      hint: 'document_number'.tr(context),
                      isRequired: true,
                    ),
                    CustomTextFieldPurchase(
                      hint: 'document_date'.tr(context),
                      isDatePicker: true,
                      isRequired: false,
                      fillColor: whiteColor,
                      suffixIcon: const Icon(Icons.calendar_month_rounded),
                    ),

                    // financial unit
                    CustomDropDownWithSearch(
                      hint: 'رقم وثيقة أمر الانتاج'.tr(context),
                      isRequired: true,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<ProductionDeliveryOrderCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),
                    CustomTextFieldPurchase(
                      hint: 'تاريخ أمر الإنتاج   '.tr(context),
                      isRequired: false,
                      fillColor: kColapsColor,
                    ),
                    CustomTextFieldPurchase(
                      hint: 'رقم المنتج'.tr(context),
                      isRequired: false,
                      fillColor: kColapsColor,
                    ),
                    CustomTextFieldPurchase(
                      hint: 'وحدة القياس'.tr(context),
                      isRequired: false,
                      fillColor: kColapsColor,
                    ),
                    CustomDropDownWithSearch(
                      hint: 'سعر تحويل المخزون'.tr(context),
                      isRequired: true,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<ProductionDeliveryOrderCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),
                    CustomDropDownWithSearch(
                      hint: 'نوع التكلفة عند التسليم'.tr(context),
                      isRequired: true,
                      fillColor: kColapsColor,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<ProductionDeliveryOrderCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),
                  ],
                ),
               const HSpacer(10),
                CustomTextFieldPurchase(
                  hint: 'الملاحظات'.tr(context),
                  isRequired: false,
                  width: context.getWidth(
                    ratioDesktop: 4,
                    ratioMobile: 0.9,
                    ratioTablet: 0.3,
                  ),
                ),
                const HSpacer(10),
                Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TitleCheckBox(
                                title: "تسليم اخر دفعة".tr(
                                  context,
                                ),
                                onChanged: (field, value, String? tblNm) {},
                              ),
                             
                            ],
                          ),
                const HSpacer(10),
                DrawerItems(
                  menuItems: [
                    Container(
                      width: context.width,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FlexibleWrapWidget(
                            itemWidth: context.getWidth(
                              ratioDesktop: 0.13,
                              ratioMobile: 0.9,
                              ratioTablet: 0.3,
                            ),
                            children: [
                              CustomTextFieldPurchase(
                                hint: 'الرقم اليدوي'.tr(context),
                                isRequired: false,
                              ),
                              CustomTextFieldPurchase(
                                hint: 'رقم المرجع'.tr(context),
                                isRequired: false,
                              ),
                              CustomTextFieldPurchase(
                                hint: 'عدد المرفقات'.tr(context),
                                isRequired: false,
                              ),
                              CustomTextFieldPurchase(
                                hint: 'كمية إمر الإنتاج'.tr(context),
                                fillColor: kColapsColor,
                                isRequired: false,
                              ),
                               CustomTextFieldPurchase(
                                hint: ' كمية الإنتاج الفعلي'.tr(context),
                                fillColor: kColapsColor,
                                isRequired: false,
                              ),
                               CustomTextFieldPurchase(
                                hint: ' الكمية السليمة المنتجة'.tr(context),
                                fillColor: kColapsColor,
                                isRequired: false,
                              ),
                               CustomTextFieldPurchase(
                                hint: ' الكمية المسلمة'.tr(context),
                                fillColor: kColapsColor,
                                isRequired: false,
                              ),
                            ],
                          ),
                          
                        ],
                      ),
                    ),
                  ],
                  itemTile: "more_data".tr(context),
                  useTitle: true,
                  backgroundColor: whiteColor,
                  collapsedBackgroundColor: dividerColor,
                  txtColor: kTextColor,
                  iconColor: kTextFiledColor,
                ),
                const HSpacer(10),
              ],
            );
          },
        ),
        const HSpacer(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomTextIconButton(
              title: 'إنزال المنتجات'.tr(context),
              // icon: FontAwesomeIcons.addressCard,
              txtColor: whiteColor,
              // iconColor: whiteColor,
              bgColor: homeButtonColor,
              width: 120,
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
  }
}
