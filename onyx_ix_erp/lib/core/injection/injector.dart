import 'package:onyx_ix_erp/core/src/onyx_ix_app_export.dart';

// Have mercy on me, leave me alone 🙆🙆
final GetIt getItApp = GetIt.instance;

class GetItInjector {
  static void init() {
    CoreInjector.init();
    _initErpModules();
  }

  ///  ✨ ERP Modules
  static void _initErpModules() {
    // Register customers and sales management
    MfsInitGetIt.init();
  }
}