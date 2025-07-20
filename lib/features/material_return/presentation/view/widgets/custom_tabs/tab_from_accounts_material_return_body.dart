import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

class TabFromAccountsMaterialReturnBody extends StatelessWidget {
  const TabFromAccountsMaterialReturnBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTableView(
          isScroll: true,
          childrenTableRow: [
            /// header
            CustomTableRow(
              color: kSkyDarkColor,
              childrenList: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 5,
                  ),
                  child: Text(
                    'entity'.tr(context),
                    textAlign: TextAlign.center,
                    style: AppTextStyles.styleRegular12(
                      context,
                      color: whiteColor,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 5,
                  ),
                  child: Text(
                    'account_number'.tr(context),
                    style: AppTextStyles.styleRegular12(
                      context,
                      color: whiteColor,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 5,
                  ),
                  child: Text(
                    'analytical_account'.tr(context),
                    style: AppTextStyles.styleRegular12(
                      context,
                      color: whiteColor,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 5,
                  ),
                  child: Text(
                    'account_name'.tr(context),
                    style: AppTextStyles.styleRegular12(
                      context,
                      color: whiteColor,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 5,
                  ),
                  child: FittedBox(
                    child: Text(
                      'account_amount'.tr(context),
                      style: AppTextStyles.styleRegular12(
                        context,
                        color: whiteColor,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 5,
                  ),
                  child: Text(
                    'رقم الشروع',
                    style: AppTextStyles.styleRegular12(
                      context,
                      color: whiteColor,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 5,
                  ),
                  child: Text(
                    'رقم بنود مشاريع',
                    style: AppTextStyles.styleRegular12(
                      context,
                      color: whiteColor,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 5,
                  ),
                  child: Text(
                    'statement'.tr(context),
                    style: AppTextStyles.styleRegular12(
                      context,
                      color: whiteColor,
                    ),
                  ),
                ),
              ],
            ),

            /// body
            CustomTableRow(
              childrenList: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'tabby'.tr(context),
                    style: AppTextStyles.styleRegular12(
                      context,
                      color: kSkyDarkColor,
                      underLine: true,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    '1110107',
                    style: AppTextStyles.styleLight12(
                      context,
                      color: kTextColor,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'analytical_account'.tr(context),
                    style: AppTextStyles.styleLight12(
                      context,
                      color: kTextColor,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'account_name'.tr(context),
                    style: AppTextStyles.styleLight12(
                      context,
                      color: kTextColor,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    '100,000',
                    style: AppTextStyles.styleLight12(
                      context,
                      color: kTextColor,
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    '1110107',
                    style: AppTextStyles.styleLight12(
                      context,
                      color: kTextColor,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    '1110107',
                    style: AppTextStyles.styleLight12(
                      context,
                      color: kTextColor,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    '',
                    style: AppTextStyles.styleLight12(
                      context,
                      color: kTextColor,
                    ),
                  ),
                ),
              ],
            ),

            CustomTableRow(
              childrenList: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'value'.tr(context),
                    style: AppTextStyles.styleRegular12(
                      context,
                      color: kSkyDarkColor,
                      underLine: true,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    '1110107',
                    style: AppTextStyles.styleLight12(
                      context,
                      color: kTextColor,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'analytical_account'.tr(context),
                    style: AppTextStyles.styleLight12(
                      context,
                      color: kTextColor,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'account_name'.tr(context),
                    style: AppTextStyles.styleLight12(
                      context,
                      color: kTextColor,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    '100,000',
                    style: AppTextStyles.styleLight12(
                      context,
                      color: kTextColor,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    '1110107',
                    style: AppTextStyles.styleLight12(
                      context,
                      color: kTextColor,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    '1110107',
                    style: AppTextStyles.styleLight12(
                      context,
                      color: kTextColor,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    '',
                    style: AppTextStyles.styleLight12(
                      context,
                      color: kTextColor,
                    ),
                  ),
                ),
              ],
            ),

            /// footer
            CustomTableRow(
              color: dividerColor,
              childrenList: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'total'.tr(context),
                    style: AppTextStyles.styleRegular12(
                      context,
                      color: kTextColor,
                    ).copyWith(fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: const SizedBox(),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: const SizedBox(),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: const SizedBox(),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    '2460.00',
                    style: AppTextStyles.styleLight12(
                      context,
                      color: kTextColor,
                    ).copyWith(fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: const SizedBox(),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: const SizedBox(),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: const SizedBox(),
                ),
              ],
            ),
          ],
        ),
        const HSpacer(4),
        const Divider(),
        const HSpacer(4),
      ],
    );
  }
}
