import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';



class TabMainMaterialReturnBody extends StatelessWidget {
  const TabMainMaterialReturnBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// payment types
        BlocBuilder<MaterialReturnCubit, MaterialReturnState>(
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
                      list: BlocProvider.of<MaterialReturnCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),
                    CustomDropDownWithSearch(
                      hint: 'hint_sub_document_type'.tr(context),
                      isRequired: true,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<MaterialReturnCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),
                    CustomDropDownWithSearch(
                      hint: 'رقم صالة الإنتاج'.tr(context),
                      isRequired: true,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<MaterialReturnCubit>(
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
                    CustomDropDownWithSearch(
                      hint: 'نوع المرتجع'.tr(context),
                      isRequired: true,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<MaterialReturnCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),

                    // financial unit
                    CustomDropDownWithSearch(
                      hint: 'رقم وثيقة أمر الانتاج'.tr(context),
                      isRequired: true,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<MaterialReturnCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),
                    CustomTextFieldPurchase(
                      hint: 'تاريخ أمر الانتاج'.tr(context),
                      isRequired: false,
                      fillColor: kGrayIX,
                    ),
                    CustomTextFieldPurchase(
                      hint: 'رقم وثيقة حركة صرف المواد'.tr(context),
                      isRequired: true,
                    ),
                    CustomTextFieldPurchase(
                      hint: 'تاريخ الصرف'.tr(context),
                      isRequired: false,
                      fillColor: kGrayIX,
                    ),
                    CustomTextFieldPurchase(
                      hint: 'سعر تحويل المخزون'.tr(context),
                      isRequired: true,
                    ),
                    CustomDropDownWithSearch(
                      hint: 'سبب المرتجع'.tr(context),
                      isRequired: false,
                      width: context.getWidth(
                        ratioDesktop: 0.9,
                        ratioMobile: 0.9,
                        ratioTablet: 0.3,
                      ),
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<MaterialReturnCubit>(
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
                  ],
                ),
                const HSpacer(10),

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
