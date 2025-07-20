import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

class TabSalesBurdensProductionDeliveryOrderBody extends StatelessWidget {
  const TabSalesBurdensProductionDeliveryOrderBody({super.key});

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
                hint: 'extra_1'.tr(context),
                isRequired: false,
                list: /*context.read<BeneficiaryDataCubit>().paymentTypes*/ [],
                validator: qValidator([
                  IsRequired('validation_accounting_unit'.tr(context)),
                ]),
              ),
              CustomDropDownWithSearch(
                hint: 'extra_2'.tr(context),
                isRequired: false,
                list: /*context.read<BeneficiaryDataCubit>().paymentTypes*/ [],
                validator: qValidator([
                  IsRequired('validation_accounting_unit'.tr(context)),
                ]),
              ),
              CustomDropDownWithSearch(
                hint: 'extra_3'.tr(context),
                isRequired: false,
                list: /*context.read<BeneficiaryDataCubit>().paymentTypes*/ [],
                validator: qValidator([
                  IsRequired('validation_accounting_unit'.tr(context)),
                ]),
              ),
              CustomDropDownWithSearch(
                hint: 'extra_4'.tr(context),
                isRequired: false,
                list: /*context.read<BeneficiaryDataCubit>().paymentTypes*/ [],
                validator: qValidator([
                  IsRequired('validation_accounting_unit'.tr(context)),
                ]),
              ),
              CustomDropDownWithSearch(
                hint: 'extra_5'.tr(context),
                isRequired: false,
                list: /*context.read<BeneficiaryDataCubit>().paymentTypes*/ [],
                validator: qValidator([
                  IsRequired('validation_accounting_unit'.tr(context)),
                ]),
              ),
              CustomDropDownWithSearch(
                hint: 'extra_6'.tr(context),
                isRequired: false,
                list: /*context.read<BeneficiaryDataCubit>().paymentTypes*/ [],
                validator: qValidator([
                  IsRequired('validation_accounting_unit'.tr(context)),
                ]),
              ),
              CustomDropDownWithSearch(
                hint: 'extra_7'.tr(context),
                isRequired: false,
                list: /*context.read<BeneficiaryDataCubit>().paymentTypes*/ [],
                validator: qValidator([
                  IsRequired('validation_accounting_unit'.tr(context)),
                ]),
              ),
              CustomDropDownWithSearch(
                hint: 'extra_8'.tr(context),
                isRequired: false,
                list: /*context.read<BeneficiaryDataCubit>().paymentTypes*/ [],
                validator: qValidator([
                  IsRequired('validation_accounting_unit'.tr(context)),
                ]),
              ),
              CustomDropDownWithSearch(
                hint: 'extra_9'.tr(context),
                isRequired: false,
                list: /*context.read<BeneficiaryDataCubit>().paymentTypes*/ [],
                validator: qValidator([
                  IsRequired('validation_accounting_unit'.tr(context)),
                ]),
              ),
              CustomDropDownWithSearch(
                hint: 'extra_10'.tr(context),
                isRequired: false,
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
