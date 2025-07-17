import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

import '../../controllers/issue_production_orders_cubit.dart';

class IpTabs2 extends StatelessWidget {
  const IpTabs2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      margin: EdgeInsets.zero,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
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
                        title: 'employees_movement2'.tr(context),
                        isActive: state.selectCurrentTab2 == 0,
                        onTap: () {
                          _onTap(context, index: 0);
                        },
                      ),
                      SelectTabButton(
                        title: 'employees_requests'.tr(context),
                        isActive: state.selectCurrentTab2 == 1,
                        onTap: () {
                          _onTap(context, index: 1);
                        },
                      ),
                      SelectTabButton(
                        title: 'Other'.tr(context),
                        isActive: state.selectCurrentTab2 == 2,
                        onTap: () {
                          _onTap(context, index: 2);
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          // const Icon(Icons.list)
        ],
      ),
    );
  }

  _onTap(BuildContext context, {required int index}) {
    context.read<IssueProductionOrdersCubit>().changeSelectCurrentTab2(index);
  }
}
