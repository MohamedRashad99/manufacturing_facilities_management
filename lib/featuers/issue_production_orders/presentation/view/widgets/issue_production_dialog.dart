import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

class IssueProductionDialog extends HookWidget {
  const IssueProductionDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<FormState>());

    final expenseColumns = [
      OnyxIxColumn(
        title: 'م',
        fieldId: 'index',
        width: OnyxIxGridSettings.minColumnWidth * 2,
        type: OnyxIxColumnType.inputText(),
        textAlign: OnyxIxColumnTextAlign.center,
        titleTextAlign: OnyxIxColumnTextAlign.center,
        enableContextMenu: false,
        enableDropToResize: false,
        enableSorting: false,
        backgroundColor: kSkyDarkColor,
      ),
      OnyxIxColumn(
        title: 'input_id'.tr(context),
        fieldId: 'input_id',
        width: OnyxIxGridSettings.minColumnWidth * 2,
        type: OnyxIxColumnType.inputText(),
        textAlign: OnyxIxColumnTextAlign.center,
        titleTextAlign: OnyxIxColumnTextAlign.center,
        enableContextMenu: false,
        enableDropToResize: false,
        enableSorting: false,
        backgroundColor: kSkyDarkColor,
      ),
      OnyxIxColumn(
        title: 'connect_means_type'.tr(context),
        fieldId: 'connect_means_type',
        width: OnyxIxGridSettings.minColumnWidth * 2,
        type: OnyxIxColumnType.inputText(),
        textAlign: OnyxIxColumnTextAlign.center,
        titleTextAlign: OnyxIxColumnTextAlign.center,
        enableContextMenu: false,
        enableDropToResize: false,
        enableSorting: false,
        backgroundColor: kSkyDarkColor,
        renderer: (rendererContext) => CustomDropDownWithSearch(
          hint: 'connect_means_type'.tr(context),
          list: const [],
          onChanged: (value) {
            // rendererContext.stateManager(
            //   fieldId: 'input_id',
            //   value: value,
            // );
          },
        ),
      ),
      OnyxIxColumn(
        title: 'contact_type'.tr(context),
        fieldId: 'contact_type',
        width: OnyxIxGridSettings.minColumnWidth * 2,
        type: OnyxIxColumnType.inputText(),
        textAlign: OnyxIxColumnTextAlign.center,
        titleTextAlign: OnyxIxColumnTextAlign.center,
        enableContextMenu: false,
        enableDropToResize: false,
        enableSorting: false,
        backgroundColor: kSkyDarkColor,
        renderer: (rendererContext) => CustomDropDownWithSearch(
          hint: 'contact_type'.tr(context),
          list: const [],
          onChanged: (value) {
            // rendererContext.stateManager(
            //   fieldId: 'input_id',
            //   value: value,
            // );
          },
        ),
      ),
      OnyxIxColumn(
        title: 'number'.tr(context),
        fieldId: 'number',
        width: OnyxIxGridSettings.minColumnWidth * 2,
        type: OnyxIxColumnType.inputText(),
        textAlign: OnyxIxColumnTextAlign.center,
        titleTextAlign: OnyxIxColumnTextAlign.center,
        enableContextMenu: false,
        enableDropToResize: false,
        enableSorting: false,
        backgroundColor: kSkyDarkColor,
      ),
      OnyxIxColumn(
        title: 'connect_record'.tr(context),
        fieldId: 'connect_record',
        width: OnyxIxGridSettings.minColumnWidth * 2,
        type: OnyxIxColumnType.inputText(),
        textAlign: OnyxIxColumnTextAlign.center,
        titleTextAlign: OnyxIxColumnTextAlign.center,
        enableContextMenu: false,
        enableDropToResize: false,
        enableSorting: false,
        backgroundColor: kSkyDarkColor,
      ),
      OnyxIxColumn(
        title: 'order'.tr(context),
        fieldId: 'order',
        width: OnyxIxGridSettings.minColumnWidth * 2,
        type: OnyxIxColumnType.inputText(),
        textAlign: OnyxIxColumnTextAlign.center,
        titleTextAlign: OnyxIxColumnTextAlign.center,
        enableContextMenu: false,
        enableDropToResize: false,
        enableSorting: false,
        backgroundColor: kSkyDarkColor,
      ),
      OnyxIxColumn(
        title: 'default'.tr(context),
        fieldId: 'default',
        width: OnyxIxGridSettings.minColumnWidth * 2,
        type: OnyxIxColumnType.inputText(),
        textAlign: OnyxIxColumnTextAlign.center,
        titleTextAlign: OnyxIxColumnTextAlign.center,
        enableContextMenu: false,
        enableDropToResize: false,
        enableSorting: false,
        backgroundColor: kSkyDarkColor,
        renderer: (rendererContext) {
          return const TitleCheckBox(title: '');
        },
      ),
      OnyxIxColumn(
        title: 'stop'.tr(context),
        fieldId: 'stop',
        width: OnyxIxGridSettings.minColumnWidth * 2,
        type: OnyxIxColumnType.inputText(),
        textAlign: OnyxIxColumnTextAlign.center,
        titleTextAlign: OnyxIxColumnTextAlign.center,
        enableContextMenu: false,
        enableDropToResize: false,
        enableSorting: false,
        backgroundColor: kSkyDarkColor,
        renderer: (rendererContext) {
          return const TitleCheckBox(title: '');
        },
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
                    //rowsPluto.remove(rendererContext.row);
                    //emit(UpdateRowsPlutoLength());
                  },
                )
              : const SizedBox.shrink();
        },
      ),
    ];

    final expenseList = [
      {
        'index': '1',
        'input_id': '25-موقع1',
        'connect_means_type': '-',
        'contact_type': '-',
        'number': '-',
        'connect_record': '-',
        'order': '1680.00',
        'default': '',
        'stop': '',
      },
      {
        'index': '2',
        'input_id': '643-موقع2',
        'connect_means_type': '-',
        'contact_type': '-',
        'number': 'نوع الاتصال',
        'connect_record': 'نوع الاتصال',
        'order': '1680.00',
        'default': '',
        'stop': '',
      },
      {
        'index': '3',
        'input_id': '25-موقع1',
        'connect_means_type': '-',
        'contact_type': '-',
        'number': '-',
        'connect_record': '-',
        'order': '1680.00',
        'default': '',
        'stop': '',
      },
      // Add more expense data as needed
    ];

    return Form(
      key: formKey,
      child: Column(
        children: [
          TitleDialogPage(title: 'contact_info'.tr(context)),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    FlexibleWrapWidget(
                      itemWidth: context.getWidth(
                        ratioDesktop: 0.20,
                        ratioTablet: 0.65,
                        ratioMobile: 1,
                      ),
                      children: [
                        CustomDropDownWithSearch(
                          hint: 'input'.tr(context),
                          list: const [],
                        ),
                        CustomDropDownWithSearch(
                          hint: 'input_id'.tr(context),
                          list: const [],
                        ),
                      ],
                    ),
                    const Spacer(),
                    CustomTextIconButton(
                      title: 'show'.tr(context),
                      icon: FontAwesomeIcons.addressCard,
                      txtColor: whiteColor,
                      iconColor: whiteColor,
                      bgColor: homeButtonColor,
                      width: 110,
                      height: 35,
                    ),
                  ],
                ),
                const HSpacer(12),
                Divider(height: 0.5, color: Colors.grey[300]),
                const HSpacer(12),
                SizedBox(
                  height: 200, // Adjust height as needed
                  child: OnyxIxGrid(
                    columns: expenseColumns,
                    rows: expenseList
                        .asMap()
                        .entries
                        .map(
                          (e) => OnyxIxRow(
                            cells: {
                              'index': OnyxIxCell(value: e.value['index']),
                              'input_id': OnyxIxCell(
                                value: e.value['input_id'],
                              ),
                              'connect_means_type': OnyxIxCell(
                                value: e.value['connect_means_type'],
                              ),
                              'contact_type': OnyxIxCell(
                                value: e.value['contact_type'],
                              ),
                              'number': OnyxIxCell(value: e.value['number']),
                              'connect_record': OnyxIxCell(
                                value: e.value['connect_record'],
                              ),
                              'order': OnyxIxCell(value: e.value['order']),
                              'default': OnyxIxCell(value: e.value['default']),
                              'stop': OnyxIxCell(value: e.value['stop']),
                              'menu': OnyxIxCell(value: e.value['23']),
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
                  ),
                ),
                const HSpacer(15),
                CustomTextFieldPurchase(hint: 'notes'.tr(context)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
