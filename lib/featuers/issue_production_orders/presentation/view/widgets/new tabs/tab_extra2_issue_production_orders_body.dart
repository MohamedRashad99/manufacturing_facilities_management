import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

class TabExtra2IssueProductionOrdersBody extends StatelessWidget {
  const TabExtra2IssueProductionOrdersBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// text form field for enter data
        SizedBox(
          width: context.width,
          child: FlexibleWrapWidget(
            noFlexibleWidget: const [],
            itemWidth: context.getWidth(
              ratioDesktop: 0.13,
              ratioMobile: 0.9,
              ratioTablet: 0.3,
            ),
            children: [
              CustomDropDownWithSearch(
                hint: 'subdirectory_1'.tr(context),
                isRequired: false,
                list: /*context.read<BeneficiaryDataCubit>().paymentTypes*/ [],
                validator: qValidator([
                  IsRequired('validation_accounting_unit'.tr(context)),
                ]),
              ),
              CustomDropDownWithSearch(
                hint: 'subdirectory_2'.tr(context),
                isRequired: false,
                list: /*context.read<BeneficiaryDataCubit>().paymentTypes*/ [],
                validator: qValidator([
                  IsRequired('validation_accounting_unit'.tr(context)),
                ]),
              ),
              CustomDropDownWithSearch(
                hint: 'subdirectory_3'.tr(context),
                isRequired: false,
                list: /*context.read<BeneficiaryDataCubit>().paymentTypes*/ [],
                validator: qValidator([
                  IsRequired('validation_accounting_unit'.tr(context)),
                ]),
              ),
              CustomDropDownWithSearch(
                hint: 'subdirectory_4'.tr(context),
                isRequired: false,
                list: /*context.read<BeneficiaryDataCubit>().paymentTypes*/ [],
                validator: qValidator([
                  IsRequired('validation_accounting_unit'.tr(context)),
                ]),
              ),
              CustomDropDownWithSearch(
                hint: 'subdirectory_5'.tr(context),
                isRequired: false,
                list: /*context.read<BeneficiaryDataCubit>().paymentTypes*/ [],
                validator: qValidator([
                  IsRequired('validation_accounting_unit'.tr(context)),
                ]),
              ),
              CustomDropDownWithSearch(
                hint: 'subdirectory_6'.tr(context),
                isRequired: false,
                width: context.getWidth(
                  ratioDesktop: 2,
                  ratioMobile: 0.9,
                  ratioTablet: 0.3,
                ),
                list: /*context.read<BeneficiaryDataCubit>().paymentTypes*/ [],
                validator: qValidator([
                  IsRequired('validation_accounting_unit'.tr(context)),
                ]),
              ),
            ],
          ),
        ),

        const HSpacer(10),
      ],
    );
  }
}
