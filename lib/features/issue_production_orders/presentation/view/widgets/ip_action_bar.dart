import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

class IpActionBar extends StatelessWidget {
  const IpActionBar({super.key});

    @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
      padding: EdgeInsets.zero,
      width: context.width,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: kAppHeaderColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1), // changes position of shadow
          ),
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, -1), // changes position of shadow
          ),
        ],
      ),
      child: FlexibleWrapWidget(
        itemWidth: context.getWidth(
            ratioDesktop: 0.35, ratioMobile: 0.9, ratioTablet: 0.4),
        spacing: 0,
        children: [
          const CustomActionMenuActiveTab(usrActnPrv: null),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Divider(height: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Divider(height: 1),
                  CustomActionButtonsActiveTab(
                    isEditing: false,

                    /// onAdd
                    onAdd: null,

                    /// onEdit
                    onEdit: () {},

                    /// onPrint
                    onPrint: () {},

                    /// onDelete
                    onDelete: () {},

                    /// onSave
                    onSave: () {},

                    /// onReset
                    onReset: null,
                  ),
                  const CustomHeaderPagination(isNew: true),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
