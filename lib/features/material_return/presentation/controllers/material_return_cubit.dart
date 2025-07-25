import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart';

part 'material_return_state.dart';

class MaterialReturnCubit extends Cubit<MaterialReturnState> {
  MaterialReturnCubit() : super(const MaterialReturnState()) {
    pageController = PageController(
      initialPage: pageIndex,
    ); // Initialize in constructor
  }

  var formKey = GlobalKey<FormState>();
  int pageIndex = 0;
  late PageController pageController;
  final ScrollController scrollController = ScrollController();
  int currentIndex = 0;
  TextEditingController yearController = TextEditingController();
  final List<OnyxIxRow> initRows = [];

  /// <<<----------- OnyxIx grid ----------->>>>>
  late final OnyxIxGridStateManager stateManager;
  bool selectAll = false;
  final List<OnyxIxRow> rowsOnyxIx = [];

  final List<Map<String, dynamic>> rowData = [
    {
      'document_number': '600014-98',
      'document_date': 'document_date_1'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
      'reference_number': '5',
      'manual_number': '5',
      'declaration': 'declaration'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
      'financial_unit': 'financial_unit_1'.tr(getIt<NavigationService>().navigatorKey.currentContext!),


      'statement': 'statement_1'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
    },
    {
      'document_number': '600014-20',
      'document_date': 'document_date_1'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
      'reference_number': '5',
      'manual_number': '14',
      'declaration': 'declaration'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
      'financial_unit': 'financial_unit_1'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
     
  
      'statement': 'statement_1'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
    },
    {
      'document_number': '240014-222',
      'document_date': 'document_date_2'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
      'reference_number': '14',
      'manual_number': '5',
      'declaration': 'declaration'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
      'financial_unit': 'financial_unit_1'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
      'statement': 'statement_1'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
    },

  ];

  void onPressDown() {
    // Ensure the scrollController is attached to a scrollable widget
    final maxScrollExtent = scrollController.position.maxScrollExtent;
    scrollController.animateTo(
      maxScrollExtent, // Scroll to the end
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void onPressUp() {
    scrollController.animateTo(
      0.0, // Scroll to the top
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  Future<void> initGridOnyxIxData() async {
    // emit(InitPreviousIncomingStockOrderGridLoading());

    rowsOnyxIx.clear();

    for (var data in rowData) {
      rowsOnyxIx.add(
        OnyxIxRow(
          cells: {
            'check_box': OnyxIxCell(value: ''),
            'document_number': OnyxIxCell(value: data['document_number']),
            'document_date': OnyxIxCell(value: data['document_date']),
            'reference_number': OnyxIxCell(value: data['reference_number']),
            'manual_number': OnyxIxCell(value: data['manual_number']),
            'declaration': OnyxIxCell(value: data['declaration']),
            'financial_unit': OnyxIxCell(value: data['financial_unit']),
            'statement': OnyxIxCell(value: data['statement']),
            'filters': OnyxIxCell(value: ''),
          },
        ),
      );
    }

    // emit(InitPreviousIncomingStockOrderGridSuccess());
  }

  List<OnyxIxColumn> columnsOnyxIx = <OnyxIxColumn>[
    OnyxIxColumn(
      title: '',
      fieldId: 'check_box',
      width: 60,
      frozen: OnyxIxColumnFrozen.start,
      type: OnyxIxColumnType.inputText(),
      backgroundColor: kSkyDarkColor,
      textAlign: OnyxIxColumnTextAlign.center,
      titleTextAlign: OnyxIxColumnTextAlign.center,
      cellPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.zero,
      filterPadding: EdgeInsets.zero,
      enableRowChecked: true,
      enableRowDrag: true,
      enableContextMenu: false,
      enableDropToResize: false,
      enableSorting: false,
    ),
    OnyxIxColumn(
      title: 'document_number'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
      fieldId: 'document_number',
      type: OnyxIxColumnType.inputText(),
      width: OnyxIxGridSettings.minColumnWidth * 2.5,
      textAlign: OnyxIxColumnTextAlign.center,
      titleTextAlign: OnyxIxColumnTextAlign.center,
      backgroundColor: kSkyDarkColor,
      renderer: (rendererContext) {
        return InkWell(
          onTap: () {
            getIt<NavigationService>().navigatorKey.currentContext!.activeTabsCubit.addActiveTab(
              ScreensEnt(
                tabPath: AppPaths.previousIncomingStockOrderScreen,
                screenName: 'request - ${rendererContext.cell.value.toString()}'
                    .replaceRange(
                      0,
                      'request'.length,
                      'request'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
                    ),
                tabName: 'request - ${rendererContext.cell.value.toString()}'
                    .replaceRange(
                      0,
                      'request'.length,
                      'request'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
                    ),
                screenPath: AppPaths.previousIncomingStockOrderScreen,
                cubit: getIt<MaterialReturnCubit>(),
                screenId: 5211,
                sysNo: 40,
                builder: (context, cubit) =>
                    BlocProvider<MaterialReturnCubit>.value(
                      value: cubit as MaterialReturnCubit,
                      child: const MaterialReturnScreen(),
                    ),
              ),
            );
          },
          child: Text(
            rendererContext.cell.value.toString(),
            textAlign: TextAlign.center,
            style: AppTextStyles.styleRegular12(
              getIt<NavigationService>().navigatorKey.currentContext!,
              color: kSkyDarkColor,
              underLine: true,
            ),
          ),
        );
      },
      enableContextMenu: false,
      enableDropToResize: false,
      enableSorting: false,
    ),
    OnyxIxColumn(
      title: 'document_date'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
      fieldId: 'document_date',
      type: OnyxIxColumnType.inputText(),
      width: OnyxIxGridSettings.minColumnWidth * 2.5,
      textAlign: OnyxIxColumnTextAlign.center,
      titleTextAlign: OnyxIxColumnTextAlign.center,
      backgroundColor: kSkyDarkColor,
      enableContextMenu: false,
      enableDropToResize: false,
      enableSorting: false,
    ),
    OnyxIxColumn(
      title: 'reference_number'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
      fieldId: 'reference_number',
      type: OnyxIxColumnType.inputText(),
      width: OnyxIxGridSettings.minColumnWidth * 2.5,
      textAlign: OnyxIxColumnTextAlign.center,
      titleTextAlign: OnyxIxColumnTextAlign.center,
      backgroundColor: kSkyDarkColor,
      enableContextMenu: false,
      enableDropToResize: false,
      enableSorting: false,
    ),
    OnyxIxColumn(
      title: 'manual_number'.tr(
        getIt<NavigationService>().navigatorKey.currentContext!,
      ), // Warehouse Name
      fieldId: 'manual_number',
      type: OnyxIxColumnType.inputText(),
      width: OnyxIxGridSettings.minColumnWidth * 2.5,
      textAlign: OnyxIxColumnTextAlign.center,
      titleTextAlign: OnyxIxColumnTextAlign.center,
      backgroundColor: kSkyDarkColor,
      enableContextMenu: false,
      enableDropToResize: false,
      enableSorting: false,
    ),
    OnyxIxColumn(
      title: 'declaration'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
      fieldId: 'declaration',
      type: OnyxIxColumnType.inputText(),
      width: OnyxIxGridSettings.minColumnWidth * 2.5,
      textAlign: OnyxIxColumnTextAlign.center,
      titleTextAlign: OnyxIxColumnTextAlign.center,
      backgroundColor: kSkyDarkColor,
      enableContextMenu: false,
      enableDropToResize: false,
      enableSorting: false,
    ),
    OnyxIxColumn(
      title: 'financial_unit'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
      fieldId: 'financial_unit',
      type: OnyxIxColumnType.inputText(),
      width: OnyxIxGridSettings.minColumnWidth * 2.5,
      textAlign: OnyxIxColumnTextAlign.center,
      titleTextAlign: OnyxIxColumnTextAlign.center,
      backgroundColor: kSkyDarkColor,
      enableContextMenu: false,
      enableDropToResize: false,
      enableSorting: false,
    ),


  
    OnyxIxColumn(
      title: '',
      fieldId: 'filters',
      type: OnyxIxColumnType.inputText(),
      width: OnyxIxGridSettings.rowHeight,
      frozen: OnyxIxColumnFrozen.end,
      readOnly: true,
      backgroundColor: kPrimaryColor,
      textAlign: OnyxIxColumnTextAlign.center,
      titleTextAlign: OnyxIxColumnTextAlign.center,
      enableContextMenu: false,
      enableDropToResize: false,
      enableFilterMenuItem: false,
      enableHideColumnMenuItem: false,
      enableSetColumnsMenuItem: false,
      enableSorting: false,
      titleSpan: const TextSpan(
        children: [
          WidgetSpan(
            child: Icon(FontAwesomeIcons.sliders, size: 12, color: whiteColor),
          ),
        ],
      ),
      renderer: (rendererContext) {
        return const Text('');
      },
    ),
  ];

  void onLoadedOnyxIx(OnyxIxGridOnLoadedEvent event) {
    stateManager = event.stateManager;
    stateManager.resizeColumn;
    event.stateManager.setSelectingMode(OnyxIxGridSelectingMode.row);
    // emit(OnLoadedIncomingStockOrderOnyxIxSuccess());
  }

  void changeSelectAll() {
    selectAll = !selectAll;
    // emit(SelectAllPreviousIncomingStockOrderSuccess());
  }

  bool currentYearCheckBox = false;
  bool onlyActiveCheckBox = false;
  bool onlyNotCancelledCheckBox = false;
  void changeCurrentYearCheckBoxMultipleTransfer(bool val) {
    currentYearCheckBox = val;
    emit(state.copyWith(currentYearCheckBox: !state.currentYearCheckBox));
  }

  void changeOnlyActiveCheckBoxMultipleTransfer(bool val) {
    onlyActiveCheckBox = val;
    emit(state.copyWith(onlyActiveCheckBox: !state.onlyActiveCheckBox));
  }

  void changeOnlyNotCancelledCheckBoxMultipleTransfer(bool val) {
    onlyNotCancelledCheckBox = val;
    emit(
      state.copyWith(onlyNotCancelledCheckBox: !state.onlyNotCancelledCheckBox),
    );
  }

  void onChangedOnyxIx(OnyxIxGridOnChangedEvent event) {
    // goRouter.go(AppPaths.previousInStockRequest);
  }

  final Map<String, GlobalKey> widgetKeys = {
    'InStockRequestTabs': GlobalKey(),
    'masterBody': GlobalKey(),
    'customerProductOnyxIxGrid': GlobalKey(),
    // Add more keys as needed
  };

  void scrollToNextWidget() {
    // Determine the total number of widgets
    final widgetKeysList = widgetKeys.keys.toList();
    final totalWidgets = widgetKeysList.length;

    // Check if there are any widgets to scroll to
    if (totalWidgets > 0) {
      // Move to the next widget, wrapping around if necessary
      currentIndex = (currentIndex + 1) % totalWidgets;
      _scrollToWidget(widgetKeysList[currentIndex]);
    }
  }

  void scrollToPreviousWidget() {
    final widgetKeysList = widgetKeys.keys.toList();
    final totalWidgets = widgetKeysList.length;

    if (totalWidgets > 0) {
      // Move to the previous widget, wrapping around if necessary
      currentIndex = (currentIndex - 1 + totalWidgets) % totalWidgets;
      _scrollToWidget(widgetKeysList[currentIndex]);
    }
  }

  void _scrollToWidget(String keyName) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final key = widgetKeys[keyName];
      final context = key?.currentContext!;
      if (context != null) {
        final RenderBox renderBox = context.findRenderObject() as RenderBox;
        final position = renderBox.localToGlobal(Offset.zero);

        if (scrollController.hasClients) {
          scrollController.animateTo(
            position.dy,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        } else {
          // Handle case where scrollController has no clients
        }
      }
    });
  }

  List<String> expenseCostMethod = [
    'average_cost'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
    'last_supply_price'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
    'sell_price'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
    'last_sale_price'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
    'last_product_price'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
  ];
  changeExpenseCostMethodValue(String? val) {
    emit(state.copyWith(expenseCostMethod: val));
  }

  changeFetchAvailableQuantityValue(bool? val) {
    emit(state.copyWith(fetchAvailableQuantity: val));
  }

  List<String> unitList = [
    'unit_23_defense_industries'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
    'unit_49_food_industries'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
    'unit_42_body_building'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
    'unit_99_paint_factory'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
  ];
  changeUnitValue(String? val) {
    emit(state.copyWith(unitValue: val));
  }

  List<String> subDocumentTypeList = [
    'sub_doc_type_company_clients'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
    'sub_doc_type_hotel_clients'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
    'sub_doc_type_factory_clients'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
    'sub_doc_type_credit_clients'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
  ];

  changeSubDocumentTypeValue(String? val) {
    emit(state.copyWith(subDocumentTypeValue: val));
  }

  List<String> warehouseDataList = [
    'warehouse_data_complete'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
    'warehouse_data_raw'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
    'warehouse_data_inspection'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
    'warehouse_data_accent_car'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
    'warehouse_data_distributor_salma'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
    'warehouse_data_distributor_essam'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
    'warehouse_data_distributor_khalidi'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
    'warehouse_data_distributor_baha'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
    'warehouse_data_distributor_mustafa'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
    'warehouse_data_distributor_bakr'.tr(getIt<NavigationService>().navigatorKey.currentContext!),
  ];

  changeWarehouseDataValue(String? val) {
    emit(state.copyWith(warehouseDataValue: val));
  }

  List<Widget> pageDialog = [
    // const InputUpdateDataDialogPage(),
    const StopDialogPage(),
    const ApprovalDialogPage(),
    const CancelDialogPage(),
  ];

  changeShowBottomTab() {
    emit(state.copyWith(showButton: !state.showButton));
  }

  changeSelectCurrentTab(int index) {
    emit(state.copyWith(selectCurrentTab: index));
  }

  changeSelectCurrentTab2(int index) {
    emit(state.copyWith(selectCurrentTab2: index));
  }

  @override
  Future<void> close() {
    yearController.dispose();
    return super.close();
  }
}
