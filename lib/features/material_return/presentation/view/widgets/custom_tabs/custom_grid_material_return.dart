
import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';




class CustomGridMaterialReturn extends StatelessWidget {
  const CustomGridMaterialReturn({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MaterialReturnCubit, MaterialReturnState>(
      builder: (context, state) {
        final expenseColumns = [
          OnyxIxColumn(
            title: 'document_name'.tr(context),
            fieldId: 'document_name',
            width: OnyxIxGridSettings.columnWidth,
            type: OnyxIxColumnType.inputText(),
            textAlign: OnyxIxColumnTextAlign.start,
            titleTextAlign: OnyxIxColumnTextAlign.start,
            enableContextMenu: false,
            enableDropToResize: false,
            enableSorting: false,
            backgroundColor: kSkyDarkColor,
          ),
          OnyxIxColumn(
            title: 'document_date'.tr(context),
            fieldId: 'document_date',
            width: OnyxIxGridSettings.columnWidth,
            type: OnyxIxColumnType.inputText(),
            backgroundColor: kSkyDarkColor,
          ),
          OnyxIxColumn(
            title: 'reference_number'.tr(context),
            fieldId: 'reference_number',
            width: OnyxIxGridSettings.columnWidth,
            type: OnyxIxColumnType.inputText(),
            backgroundColor: kSkyDarkColor,
          ),
          OnyxIxColumn(
            title: 'document_type'.tr(context),
            fieldId: 'document_type',
            width: OnyxIxGridSettings.columnWidth,
            type: OnyxIxColumnType.inputText(),
            backgroundColor: kSkyDarkColor,
          ),
          OnyxIxColumn(
            title: 'type_of_reference_document'.tr(context),
            fieldId: 'type_of_reference_document',
            width: OnyxIxGridSettings.columnWidth,
            type: OnyxIxColumnType.inputText(),
            backgroundColor: kSkyDarkColor,
          ),
          OnyxIxColumn(
            title: 'statement'.tr(context),
            fieldId: 'statement',
            width: OnyxIxGridSettings.columnWidth,
            type: OnyxIxColumnType.inputText(),
            backgroundColor: kSkyDarkColor,
          ),
          OnyxIxColumn(
            title: 'band_name'.tr(context),
            fieldId: 'band_name',
            width: OnyxIxGridSettings.columnWidth,
            type: OnyxIxColumnType.inputText(),
            backgroundColor: kSkyDarkColor,
          ),
          OnyxIxColumn(
            title: 'band_type'.tr(context),
            fieldId: 'band_type',
            width: OnyxIxGridSettings.columnWidth,
            type: OnyxIxColumnType.inputText(),
            backgroundColor: kSkyDarkColor,
          ),
          OnyxIxColumn(
            title: 'value_type'.tr(context),
            fieldId: 'value_type',
            width: OnyxIxGridSettings.columnWidth,
            type: OnyxIxColumnType.inputText(),
            backgroundColor: kSkyDarkColor,
          ),
          OnyxIxColumn(
            title: 'band_value'.tr(context),
            fieldId: 'band_value',
            width: OnyxIxGridSettings.columnWidth,
            type: OnyxIxColumnType.inputText(),
            backgroundColor: kSkyDarkColor,
          ),
          OnyxIxColumn(
            title: 'period_name'.tr(context),
            fieldId: 'period_name',
            width: OnyxIxGridSettings.columnWidth,
            type: OnyxIxColumnType.inputText(),
            backgroundColor: kSkyDarkColor,
          ),
          OnyxIxColumn(
            title: 'year'.tr(context),
            fieldId: 'year',
            width: OnyxIxGridSettings.columnWidth,
            type: OnyxIxColumnType.inputText(),
            backgroundColor: kSkyDarkColor,
          ),
          OnyxIxColumn(
            title: 'holiday_name'.tr(context),
            fieldId: 'holiday_name',
            width: OnyxIxGridSettings.columnWidth,
            type: OnyxIxColumnType.inputText(),
            backgroundColor: kSkyDarkColor,
          ),
          OnyxIxColumn(
            title: 'ear_name'.tr(context),
            fieldId: 'ear_name',
            width: OnyxIxGridSettings.columnWidth,
            type: OnyxIxColumnType.inputText(),
            backgroundColor: kSkyDarkColor,
          ),
          OnyxIxColumn(
            title: 'from_date'.tr(context),
            fieldId: 'from_date',
            width: OnyxIxGridSettings.columnWidth,
            type: OnyxIxColumnType.inputText(),
            backgroundColor: kSkyDarkColor,
          ),
          OnyxIxColumn(
            title: 'to_date'.tr(context),
            fieldId: 'to_date',
            width: OnyxIxGridSettings.columnWidth,
            type: OnyxIxColumnType.inputText(),
            backgroundColor: kSkyDarkColor,
          ),
          OnyxIxColumn(
            title: 'duration_in_days'.tr(context),
            fieldId: 'duration_in_days',
            width: OnyxIxGridSettings.columnWidth,
            type: OnyxIxColumnType.inputText(),
            backgroundColor: kSkyDarkColor,
          ),
          OnyxIxColumn(
            title: 'from_time'.tr(context),
            fieldId: 'from_time',
            width: OnyxIxGridSettings.columnWidth,
            type: OnyxIxColumnType.inputText(),
            backgroundColor: kSkyDarkColor,
          ),
          OnyxIxColumn(
            title: 'to_time'.tr(context),
            fieldId: 'to_time',
            width: OnyxIxGridSettings.columnWidth,
            type: OnyxIxColumnType.inputText(),
            backgroundColor: kSkyDarkColor,
          ),
          OnyxIxColumn(
            title: 'duration_in_hours'.tr(context),
            fieldId: 'duration_in_hours',
            width: OnyxIxGridSettings.columnWidth,
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
                      icon: FontAwesomeIcons.trashCan,
                      iconColor: kTextFieldColor,
                      hoverColor: kButtonDelete,
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
          // {
          //   'document_name': '1',
          //   'document_date': '-',
          //   'reference_number': '-',
          //   'document_type': '-',
          //   'type_of_reference_document': '-',
          //   'statement': '-',
          //   'band_name': '-',
          //   'band_type': '',
          //   'value_type': '-',
          // 'band_value': '-',
          // 'period_name': '-',
          // 'year': '-',
          // 'holiday_name': '-',
          // 'ear_name': '-',
          // 'from_date': '-',
          // 'to_date': '-',
          // 'duration_in_days': '-',
          // 'from_time': '-',
          // 'to_time': '-',
          // 'duration_in_hours': '-',

          // },
          // {
          //   'document_name': '2',
          //   'document_date': '-',
          //   'reference_number': '-',
          //   'document_type': '-',
          //   'type_of_reference_document': '-',
          //   'statement': '-',
          //   'band_name': '-',
          //   'band_type': '',
          //   'value_type': '-',
          // 'band_value': '-',
          // 'period_name': '-',
          // 'year': '-',
          // 'holiday_name': '-',
          // 'ear_name': '-',
          // 'from_date': '-',
          // 'to_date': '-',
          // 'duration_in_days': '-',
          // 'from_time': '-',
          // 'to_time': '-',
          // 'duration_in_hours': '-',
          // },
          // {
          //   'document_name': '3',
          //   'document_date': '-',
          //   'reference_number': '-',
          //   'document_type': '-',
          //   'type_of_reference_document': '-',
          //   'statement': '-',
          //   'band_name': '-',
          //   'band_type': '',
          //   'value_type': '-',
          // 'band_value': '-',
          // 'period_name': '-',
          // 'year': '-',
          // 'holiday_name': '-',
          // 'ear_name': '-',
          // 'from_date': '-',
          // 'to_date': '-',
          // 'duration_in_days': '-',
          // 'from_time': '-',
          // 'to_time': '-',
          // 'duration_in_hours': '-',
          // },
        ];

        return Column(
          children: [
            SizedBox(
              height: 120, // Adjust height as needed
              child: OnyxIxGrid(
                columns: expenseColumns,
                rows: expenseList
                    .map(
                      (e) => OnyxIxRow(
                        cells: {
                          'document_name': OnyxIxCell(
                            value: e['document_name'],
                          ),
                          'document_date': OnyxIxCell(
                            value: e['document_date'],
                          ),
                          'reference_number': OnyxIxCell(
                            value: e['reference_number'],
                          ),
                          'document_type': OnyxIxCell(
                            value: e['document_type'],
                          ),
                          'type_of_reference_document': OnyxIxCell(
                            value: e['type_of_reference_document'],
                          ),
                          'statement': OnyxIxCell(value: e['statement']),
                          'band_name': OnyxIxCell(value: e['band_name']),
                          'band_type': OnyxIxCell(value: e['band_type']),
                          'value_type': OnyxIxCell(value: e['value_type']),
                          'band_value': OnyxIxCell(value: e['band_value']),
                          'period_name': OnyxIxCell(value: e['period_name']),
                          'year': OnyxIxCell(value: e['year']),
                          'holiday_name': OnyxIxCell(value: e['holiday_name']),
                          'ear_name': OnyxIxCell(value: e['ear_name']),
                          'from_date': OnyxIxCell(value: e['from_date']),
                          'to_date': OnyxIxCell(value: e['to_date']),
                          'duration_in_days': OnyxIxCell(
                            value: e['duration_in_days'],
                          ),
                          'from_time': OnyxIxCell(value: e['from_time']),
                          'to_time': OnyxIxCell(value: e['to_time']),
                          'duration_in_hours': OnyxIxCell(
                            value: e['duration_in_hours'],
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
