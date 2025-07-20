part of 'production_delivery_order_cubit.dart';
///* TODO: Note that this is not correct state file that we will use in the future
///* TODO: We will replace it. We're just using it for now to avoid errors

@immutable
class ProductionDeliveryOrderState {
  final bool isLoading;
  final String? errMsg;
  final bool currentYearCheckBox;
  final bool onlyActiveCheckBox;
  final bool onlyNotCancelledCheckBox;
  final String? subDocumentTypeValue;
  final String? warehouseDataValue;
  final bool showButton;
  final bool cancelDialogPage;
  final bool stopDialogPage;
  final bool isEditing;
  final int pageIndex;
  final int selectCurrentTab;
  final int selectCurrentTab2;
  final bool fetchAvailableQuantity;
  final String? unitValue;
  final String? expenseCostMethod;
  final String? distributionMethod;
  final ScreensEnt? screensEnt;

  const ProductionDeliveryOrderState({
    this.isLoading = false,
    this.errMsg,
    this.screensEnt,
    this.currentYearCheckBox = false,
    this.isEditing = false,
    this.onlyActiveCheckBox = false,
    this.onlyNotCancelledCheckBox = false,
    this.showButton = true,
    this.subDocumentTypeValue,
    this.warehouseDataValue,
    this.cancelDialogPage = false,
    this.stopDialogPage = false,
    this.fetchAvailableQuantity = false,
    this.distributionMethod,
    this.pageIndex = 0,
    this.selectCurrentTab = 0,
    this.selectCurrentTab2 = 0,
    this.unitValue,
    this.expenseCostMethod,
  });

  // CopyWith method for creating updated versions of LoginState
  ProductionDeliveryOrderState copyWith({
    bool? isLoading,
    String? errMsg,
    bool? currentYearCheckBox,
    bool? onlyActiveCheckBox,
    bool? onlyNotCancelledCheckBox,
    String? subDocumentTypeValue,
    String? warehouseDataValue,
    bool? cancelDialogPage,
    bool? stopDialogPage,
    int? pageIndex,
    int? selectCurrentTab,
    int? selectCurrentTab2,
    bool? showButton,
    bool? isEditing,
    bool? fetchAvailableQuantity,
    String? unitValue,
    String? expenseCostMethod,
    String? distributionMethod,
    ScreensEnt? screensEnt,
  }) {
    return ProductionDeliveryOrderState(
      isLoading: isLoading ?? this.isLoading,
      errMsg: errMsg ?? this.errMsg,
      showButton: showButton ?? this.showButton,
      currentYearCheckBox: currentYearCheckBox ?? this.currentYearCheckBox,
      onlyActiveCheckBox: onlyActiveCheckBox ?? this.onlyActiveCheckBox,
      onlyNotCancelledCheckBox:
          onlyNotCancelledCheckBox ?? this.onlyNotCancelledCheckBox,
      subDocumentTypeValue: subDocumentTypeValue ?? this.subDocumentTypeValue,
      warehouseDataValue: warehouseDataValue ?? this.warehouseDataValue,
      cancelDialogPage: cancelDialogPage ?? this.cancelDialogPage,
      stopDialogPage: stopDialogPage ?? this.stopDialogPage,
      pageIndex: pageIndex ?? this.pageIndex,
      selectCurrentTab: selectCurrentTab ?? this.selectCurrentTab,
      selectCurrentTab2: selectCurrentTab2 ?? this.selectCurrentTab2,
      unitValue: unitValue ?? this.unitValue,
      isEditing: isEditing ?? this.isEditing,
      expenseCostMethod: expenseCostMethod ?? this.expenseCostMethod,
      fetchAvailableQuantity:
          fetchAvailableQuantity ?? this.fetchAvailableQuantity,
      distributionMethod: distributionMethod ?? this.distributionMethod,
      screensEnt: screensEnt ?? this.screensEnt,
    );
  }
}
