import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

class TabMainIssueProductionOrdersBody extends StatelessWidget {
  const TabMainIssueProductionOrdersBody({super.key});

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
                    CustomTextFieldPurchase(
                      hint: 'year'.tr(context),
                      isRequired: true,
                      fillColor: whiteColor,
                    ),
                    CustomDropDownWithSearch(
                      hint: 'financial_unit'.tr(context),
                      isRequired: true,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<IssueProductionOrdersCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),
                    CustomDropDownWithSearch(
                      hint: 'sub_document_type'.tr(context),
                      isRequired: true,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<IssueProductionOrdersCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),
                    CustomDropDownWithSearch(
                      hint: 'رقم صالة الإنتاج'.tr(context),
                      isRequired: true,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<IssueProductionOrdersCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),
                    CustomDropDownWithSearch(
                      hint: 'document_number'.tr(context),
                      isRequired: true,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<IssueProductionOrdersCubit>(
                        context,
                      ).subDocumentTypeList,
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
                      hint: 'product_number'.tr(context),
                      isRequired: true,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<IssueProductionOrdersCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),
                    CustomDropDownWithSearch(
                      hint: 'رقم شجرة المنتج'.tr(context),
                      isRequired: true,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<IssueProductionOrdersCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),
                    CustomDropDownWithSearch(
                      hint: 'رقم المسار'.tr(context),
                      isRequired: true,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<IssueProductionOrdersCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),
                    CustomDropDownWithSearch(
                      hint: 'رقم مخزن التسليم'.tr(context),
                      isRequired: true,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<IssueProductionOrdersCubit>(
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
                          CustomDropDownWithSearch(
                            hint: 'مصدر التوجية'.tr(context),
                            isRequired: true,
                            selectedItem: state.unitValue,
                            list: BlocProvider.of<IssueProductionOrdersCubit>(
                              context,
                            ).subDocumentTypeList,
                          ),
                          CustomDropDownWithSearch(
                            hint: 'نوع بيانات العمال'.tr(context),
                            isRequired: true,
                            selectedItem: state.unitValue,
                            list: BlocProvider.of<IssueProductionOrdersCubit>(
                              context,
                            ).subDocumentTypeList,
                          ),
                          CustomDropDownWithSearch(
                            hint: 'طريقة التسليم'.tr(context),
                            isRequired: true,
                            selectedItem: state.unitValue,
                            list: BlocProvider.of<IssueProductionOrdersCubit>(
                              context,
                            ).subDocumentTypeList,
                          ),
                          CustomDropDownWithSearch(
                            hint: 'الكمية المطلوبة'.tr(context),
                            isRequired: true,
                            selectedItem: state.unitValue,
                            list: BlocProvider.of<IssueProductionOrdersCubit>(
                              context,
                            ).subDocumentTypeList,
                          ),
                          CustomTextFieldPurchase(
                            hint: 'تاريخ البداية المطلوبة'.tr(context),
                            isDatePicker: true,
                            isRequired: true,
                            fillColor: whiteColor,
                            suffixIcon: const Icon(
                              Icons.calendar_month_rounded,
                            ),
                          ),

                          CustomTextFieldPurchase(
                            hint: 'time'.tr(context),
                            isRequired: true,
                          ),
                          CustomTextFieldPurchase(
                            hint: 'تاريخ النهاية المطلوبة'.tr(context),
                            isDatePicker: true,
                            isRequired: true,
                            fillColor: whiteColor,
                            suffixIcon: const Icon(
                              Icons.calendar_month_rounded,
                            ),
                          ),
                          CustomTextFieldPurchase(
                            hint: 'time'.tr(context),
                            isRequired: true,
                          ),
                        ],
                      ),
                    ],
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
                                hint: 'الكمية السليمة المنتجة'.tr(context),
                                isRequired: false,
                              ),
                              CustomTextFieldPurchase(
                                hint: 'كمية تالفة'.tr(context),
                                isRequired: false,
                              ),
                              CustomTextFieldPurchase(
                                hint: 'الكمية السليمة'.tr(context),
                                isRequired: false,
                              ),
                              CustomTextFieldPurchase(
                                hint: 'الملاحظات'.tr(context),
                                isRequired: false,
                              ),
                              CustomTextFieldPurchase(
                                hint: 'رقم المرجع'.tr(context),
                                isRequired: false,
                              ),
                              CustomTextFieldPurchase(
                                hint: 'user_id_hint'.tr(context),
                                isRequired: false,
                              ),
                              CustomTextFieldPurchase(
                                hint: 'password_label'.tr(context),
                                isRequired: false,
                              ),
                            ],
                          ),
                          // TitleCheckBox(
                          //   title:
                          //       "change_password_after_first_login".tr(context),
                          //   onChanged: (field, value, String? tblNm) {},
                          // ),
                          const HSpacer(10),
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
