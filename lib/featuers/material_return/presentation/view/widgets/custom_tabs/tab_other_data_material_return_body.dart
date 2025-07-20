import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';
import 'package:manufacturing_facilities_management/featuers/material_return/presentation/controllers/material_return_cubit.dart';
import 'package:manufacturing_facilities_management/featuers/material_return/presentation/controllers/material_return_state.dart';

class TabOtherDataMaterialReturnBody extends StatelessWidget {
  const TabOtherDataMaterialReturnBody({super.key});

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
                    CustomDropDownWithSearch(
                      hint: 'نوع انزال الوثيقة'.tr(context),
                      isRequired: false,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<MaterialReturnCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),
                    CustomDropDownWithSearch(
                      hint: 'رقم الوثيقة المرجعية'.tr(context),
                      isRequired: false,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<MaterialReturnCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),
                    CustomTextFieldPurchase(
                      hint: 'تاريخ الوثيقة المرجعية'.tr(context),
                      isRequired: false,
                      fillColor: whiteColor,
                    ),

                    // financial unit
                    CustomDropDownWithSearch(
                      hint: 'نوع الوثيقة'.tr(context),
                      isRequired: false,
                      selectedItem: state.unitValue,
                      list: BlocProvider.of<MaterialReturnCubit>(
                        context,
                      ).subDocumentTypeList,
                    ),
                    CustomTextFieldPurchase(
                      hint: 'النوع'.tr(context),
                      isRequired: false,
                      fillColor: whiteColor,
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
