import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';
import 'package:manufacturing_facilities_management/core/featuers/manufacturing_facilities_management/material_return/presentation/controllers/material_return_cubit.dart';

class MaterialReturnGrid extends StatelessWidget {
  const MaterialReturnGrid({super.key, required this.offstage});
  final bool offstage;
  final double rowHeight = 40;

  @override
  Widget build(BuildContext context) {
    final count = context.read<MaterialReturnCubit>().rowsOnyxIx.length + 2.7;
    return SizedBox(
      height:
          count *
          rowHeight, // 16 length for grid cell + 2.5 for border && header && footer = 18.5
      child: OnyxIxGrid(
        columns: context.read<MaterialReturnCubit>().columnsOnyxIx,
        rows: context.read<MaterialReturnCubit>().rowsOnyxIx,
        onLoaded: context.read<MaterialReturnCubit>().onLoadedOnyxIx,
        onRowDoubleTap: (event) {
          // Get the first cell value from the tapped row
          // final firstCellValue = event
          //     .row
          //     .cells[context
          //     .read<MaterialReturnCubit>()
          //     .columnsOnyxIx[1]
          //     .field]!
          //     .value;
          // context.activeTabsCubit.addActiveTab(ActiveTabModel(
          //     name: 'request - $firstCellValue'
          //         .replaceRange(0, 'request'.length , 'request'.tr(context),),
          //     routeName: AppPaths.previousMultipleStockTransferScreen,
          //     isOpenNow: true));
        },
        configuration: OnyxIxGridConfiguration(
          enableMoveDownAfterSelecting: true,
          style: OnyxIxGridStyleConfig(
            rowHeight: rowHeight,
            gridBorderRadius: BorderRadius.circular(4),
            cellTextStyle: AppTextStyles.styleRegular12(
              context,
              color: kTextColor,
            ),
            columnTextStyle: AppTextStyles.styleRegular12(
              context,
              color: whiteColor,
            ),
            iconSize: 12,
            defaultColumnFilterPadding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            iconColor: dividerColor,
            activatedColor: whiteColor,
            activatedBorderColor: kPrimaryColor,
            disabledIconColor: dividerColor,
            borderColor: dividerColor,
            gridBorderColor: transparent,
          ),
          scrollbar: const OnyxIxGridScrollbarConfig(
            scrollbarThickness: 5,
            scrollBarColor: kCardGreenColor,
            scrollbarThicknessWhileDragging: 20,
          ),
        ),
        rowColorCallback: (rowColorContext) {
          if (rowColorContext.rowIdx % 2 == 0) {
            return whiteColor;
          }
          return kColapsColor;
        },
        createFooter: (stateManager) {
          stateManager.setPageSize(16, notify: false);
          return OnyxIxPagination(stateManager, pageSizeToMove: 1);
        },
      ),
    );
  }
}
