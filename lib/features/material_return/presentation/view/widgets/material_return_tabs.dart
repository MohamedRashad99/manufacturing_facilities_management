import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';



class MaterialReturnTabs extends StatelessWidget {
  const MaterialReturnTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      margin: EdgeInsets.zero,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlocBuilder<MaterialReturnCubit, MaterialReturnState>(
            builder: (context, state) {
              return Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  primary: true,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectTabButton(
                        title: 'main_data'.tr(context),
                        isActive: state.selectCurrentTab == 0,
                        onTap: () {
                          _onTap(context, index: 0);
                        },
                      ),
                      SelectTabButton(
                        title: 'انزال من'.tr(context),
                        isActive: state.selectCurrentTab == 1,
                        onTap: () {
                          _onTap(context, index: 1);
                        },
                      ),
                      SelectTabButton(
                        title: 'additional_field_12'.tr(context),
                        isActive: state.selectCurrentTab == 2,
                        onTap: () {
                          _onTap(context, index: 2);
                        },
                      ),
                      // SelectTabButton(
                      //     title: 'additional_field_12'.tr(context),
                      //     isActive: state.selectCurrentTab == 3,
                      //     onTap: () {
                      //       _onTap(context, index: 3);
                      //     }),
                    ],
                  ),
                ),
              );
            },
          ),
          const Icon(Icons.list),
        ],
      ),
    );
  }

  _onTap(BuildContext context, {required int index}) {
    context.read<MaterialReturnCubit>().changeSelectCurrentTab(index);
  }
}
