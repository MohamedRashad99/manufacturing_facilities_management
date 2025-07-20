import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';



class TabMainMaterialOrderReleaseBody extends StatelessWidget {
  const TabMainMaterialOrderReleaseBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// payment types
        BlocBuilder<MaterialOrderReleaseCubit, MaterialOrderReleaseState>(
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
                      fillColor: whiteColor,
                    ),
                    CustomDropDownWithSearch(
                      hint: 'financial_unit'.tr(context),
                      isRequired: true,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<MaterialOrderReleaseCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),
                    CustomDropDownWithSearch(
                      hint: 'hint_sub_document_type'.tr(context),
                      isRequired: true,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<MaterialOrderReleaseCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),
                    CustomDropDownWithSearch(
                      hint: 'رقم صالة الإنتاج'.tr(context),
                      isRequired: true,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<MaterialOrderReleaseCubit>(
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
                      list: BlocProvider.of<MaterialOrderReleaseCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),
                    CustomTextFieldPurchase(
                      hint: 'رقم المنتج'.tr(context),
                      isRequired: false,
                      fillColor: kGrayIX,
                    ),
                    CustomTextFieldPurchase(
                      hint: 'وحدة القياس'.tr(context),
                      isRequired: false,
                      fillColor: kGrayIX,
                    ),
                    CustomDropDownWithSearch(
                      hint: 'سعر تحويل المخزون'.tr(context),
                      isRequired: true,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<MaterialOrderReleaseCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),
                  ],
                ),
                const HSpacer(10),
                Container(
                  width: context.width,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: kGrayIX,
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Column(
                    children: [
                      FlexibleWrapWidget(
                        itemWidth: context.getWidth(
                          ratioDesktop: 0.13,
                          ratioMobile: 0.9,
                          ratioTablet: 0.3,
                        ),
                        children: [
                          CustomTextFieldPurchase(
                            hint: 'كمية أمر المنتج'.tr(context),
                            isRequired: false,
                            fillColor: kGrayIX,
                          ),
                          CustomTextFieldPurchase(
                            hint: 'الكمية المصروف سابقا'.tr(context),
                            isRequired: false,
                            fillColor: kGrayIX,
                          ),

                          CustomTextFieldPurchase(
                            hint: 'الكمية المطلوبة للصرف'.tr(context),
                            isRequired: true,
                          ),
                          CustomTextFieldPurchase(
                            hint: 'نوع الوثيقة المرجعية'.tr(context),
                            isRequired: false,
                            fillColor: kGrayIX,
                          ),
                          CustomTextFieldPurchase(
                            hint: 'رقم الوثيقة المرجعية'.tr(context),
                            isRequired: false,
                            fillColor: kGrayIX,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const HSpacer(10),
                CustomTextFieldPurchase(
                  hint: 'سبب الصرف'.tr(context),
                  isRequired: true,
                  width: context.getWidth(
                    ratioDesktop: 4,
                    ratioMobile: 0.9,
                    ratioTablet: 0.3,
                  ),
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
                                hint: 'الملاحظات'.tr(context),
                                isRequired: false,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TitleCheckBox(
                                title: "صرف فوارق الاستهلاك عن المصروف".tr(
                                  context,
                                ),
                                onChanged: (field, value, String? tblNm) {},
                              ),
                              TitleCheckBox(
                                title: "صرف مرتجع نظام الجودة".tr(context),
                                onChanged: (field, value, String? tblNm) {},
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
                  collapsedBackgroundColor: kGrayIX,
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
              title: 'إنزال المواد'.tr(context),
              // icon: FontAwesomeIcons.addressCard,
              txtColor: whiteColor,
              // iconColor: whiteColor,
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
  }
}
