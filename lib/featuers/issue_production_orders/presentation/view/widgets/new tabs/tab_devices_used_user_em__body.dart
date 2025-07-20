import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';
import 'package:manufacturing_facilities_management/featuers/issue_production_orders/presentation/controllers/issue_production_orders_cubit.dart';
import 'package:manufacturing_facilities_management/featuers/issue_production_orders/presentation/controllers/issue_production_orders_state.dart';

class TabDevicesUsedEmBody extends StatelessWidget {
  const TabDevicesUsedEmBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IssueProductionOrdersCubit, IssueProductionOrdersState>(
      builder: (context, state) {
        final expenseColumns = [
          OnyxIxColumn(
            title: 'document_name'.tr(context),
            fieldId: 'document_name',
            width: OnyxIxGridSettings.columnWidth * 2.5,
            type: OnyxIxColumnType.inputText(),
            backgroundColor: kSkyDarkColor,
          ),
          OnyxIxColumn(
            title: 'document_amount'.tr(context),
            fieldId: 'document_amount',
            width: OnyxIxGridSettings.columnWidth * 2.5,
            type: OnyxIxColumnType.inputText(),
            backgroundColor: kSkyDarkColor,
          ),
          OnyxIxColumn(
            title: 'currency_hint'.tr(context),
            fieldId: 'currency_hint',
            width: OnyxIxGridSettings.columnWidth * 4,
            type: OnyxIxColumnType.inputText(),
            backgroundColor: kSkyDarkColor,
          ),

          OnyxIxColumn(
            title: '',
            fieldId: 'menu',
            type: OnyxIxColumnType.inputText(),
            width: OnyxIxGridSettings.rowHeight,
            frozen: OnyxIxColumnFrozen.end,
            backgroundColor: kPrimaryColor,
            textAlign: OnyxIxColumnTextAlign.center,
            titleTextAlign: OnyxIxColumnTextAlign.center,
            enableContextMenu: false,
            enableDropToResize: false,
            enableFilterMenuItem: false,
            enableHideColumnMenuItem: false,
            enableSetColumnsMenuItem: false,
            suppressedAutoSize: true,
            enableSorting: false,
            titleSpan: const TextSpan(
              children: [
                WidgetSpan(
                  child: Icon(
                    FontAwesomeIcons.ellipsisVertical,
                    size: 12,
                    color: whiteColor,
                  ),
                ),
              ],
            ),
            renderer: (rendererContext) {
              final rowCount = rendererContext.stateManager.refRows.length;

              return (rendererContext.rowIdx != rowCount - 0)
                  ? HoverIconButton(
                      icon: FontAwesomeIcons.arrowUpRightFromSquare,
                      iconColor: kSkyDarkColor,
                      // hoverColor: kButtonDelete,
                      iconSize: 12.0,
                      onPressed: () {
                        rendererContext.stateManager.removeRows([
                          rendererContext.row,
                        ]);
                        //rowsOnyxIx.remove(rendererContext.row);
                        //emit(UpdateRowsOnyxIxLength());
                      },
                    )
                  : const SizedBox.shrink();
            },
          ),
        ];

        final expenseList = [
          {
            'index': '1',
            'document_name': '23423-اسم المنتج',
            'document_amount': '23423',
            'currency_hint': 'EGP',
          },
          {
            'index': '2',
            'document_name': '235-اسم المنتج',
            'document_amount': '7,515,00',
            'currency_hint': 'EGP',
          },
          {
            'index': '3',
            'document_name': '65-اسم المنتج',
            'document_amount': '23423',
            'currency_hint': 'EGP',
          },
        ];

        return Column(
          children: [
            SizedBox(
              height: 200, // Adjust height as needed
              child: OnyxIxGrid(
                columns: expenseColumns,
                rows: expenseList
                    .map(
                      (e) => OnyxIxRow(
                        cells: {
                          'document_name': OnyxIxCell(
                            value: e['document_name'],
                          ),
                          'document_amount': OnyxIxCell(
                            value: e['document_amount'],
                          ),
                          'currency_hint': OnyxIxCell(
                            value: e['currency_hint'],
                          ),

                          'menu': OnyxIxCell(value: ''), // for delete icon
                        },
                      ),
                    )
                    .toList(),

                configuration: OnyxIxGridConfiguration(
                  enableMoveDownAfterSelecting: true,
                  style: OnyxIxGridStyleConfig(
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
                    borderColor: transparent,
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
              ),
            ),
            const HSpacer(4),
          ],
        );
      },
    );
  }
}
