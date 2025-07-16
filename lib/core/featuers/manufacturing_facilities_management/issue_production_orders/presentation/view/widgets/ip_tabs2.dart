import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/issue_production_orders/presentation/controllers/issue_production_orders_cubit.dart';
import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/issue_production_orders/presentation/controllers/issue_production_orders_state.dart';
import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

class IpTabs2 extends StatelessWidget {
  const IpTabs2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        margin: EdgeInsets.zero,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          BlocBuilder<IssueProductionOrdersCubit, IssueProductionOrdersState>(
            builder: (context, state) {
              return Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  primary: true,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectTabButton(
                          title: 'المسار الانتاجي'.tr(context),
                          isActive: state.selectCurrentTab2 == 0,
                          onTap: () {
                            _onTap(context, index: 0);
                          }),
                      SelectTabButton(
                          title: 'قائمة المواد الاولية'.tr(context),
                          isActive: state.selectCurrentTab2 == 1,
                          onTap: () {
                            _onTap(context, index: 1);
                          }),
                      SelectTabButton(
                          title: 'امر صرف مواد'.tr(context),
                          isActive: state.selectCurrentTab2 == 2,
                          onTap: () {
                            _onTap(context, index: 2);
                          }),
                      SelectTabButton(
                          title: 'بيانات التشغيل الفعلية'.tr(context),
                          isActive: state.selectCurrentTab2 == 3,
                          onTap: () {
                            _onTap(context, index: 3);
                          }),
                      SelectTabButton(
                          title: 'حركات المواد'.tr(context),
                          isActive: state.selectCurrentTab2 == 2,
                          onTap: () {
                            _onTap(context, index: 2);
                          }),
                      SelectTabButton(
                          title: 'امر مرتجع المواد'.tr(context),
                          isActive: state.selectCurrentTab2 == 4,
                          onTap: () {
                            _onTap(context, index: 4);
                          }),
                          SelectTabButton(
                          title: 'امر تسليم الانتاج'.tr(context),
                          isActive: state.selectCurrentTab2 == 5,
                          onTap: () {
                            _onTap(context, index: 5);
                          }),
                    ],
                  ),
                ),
              );
            },
          ),
          // const Icon(Icons.list)
        ]));
  }

  _onTap(BuildContext context, {required int index}) {
    context.read<IssueProductionOrdersCubit>().changeSelectCurrentTab2(index);
  }
}
