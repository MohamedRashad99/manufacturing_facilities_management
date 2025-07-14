import 'package:manufacturing_facilities_management/core/src/manufacturing_facilities_management_export.dart' show registerMfsCubitBuilder;
import 'package:file_manager/file_manager.dart' as fm;
import 'core/src/onyx_ix_app_export.dart';


Future<void> main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      // fm.clearStorageWeb(() => ClearStorage.clear());

      ///* Initialize Hydrated Bloc
      HydratedBloc.storage = await HydratedStorage.build(
        storageDirectory: kIsWeb
            ? HydratedStorageDirectory.web
            : HydratedStorageDirectory((await getTemporaryDirectory()).path),
      );

      /// ::TODO This is will be make an Conflict with Flutter Web cause cause need to make configuration for Web.
      // await dotenv.load(fileName: ".env");
      // String apiKey = dotenv.env['API_KEY'] ?? '';
      // String baseUrl = dotenv.env['BASE_URL'] ?? '';
      // bool enableFeatureX = dotenv.env['ENABLE_FEATURE_X'] == 'true';

      /// ::TODO This is will be make an Conflict with Flutter Mobile make sure to Update this code
      /// fm.disableBrowserBackButton(); after solve Conflict with Flutter Mobile
      // if (!kIsWeb) {
      //   fm.disableBrowserBackButton();
      // }

      DeviceInfoService deviceInfoService = DeviceInfoService();
      Map<String, dynamic> deviceInfo = await deviceInfoService.getDeviceInfo();

      await FullScreen.ensureInitialized();
      final List<ConnectivityResult> connectivityResult = await Connectivity().checkConnectivity();

      final bool noInternet =
          connectivityResult.contains(ConnectivityResult.none);

      if (!noInternet) {
        await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        );
      }

      GetItInjector.init();
      // setUrlStrategy(PathUrlStrategy());

      // Register each module cubit builder
      registerMfsCubitBuilder();

      // Collect into central registry
      CubitBuilderRegistry.initFromGetIt();

      /// check user is logged in and set the authEnt
      // await getItApp<TokenService>().setTokenInDioHeader();
      Map authEntJson = await getItApp<CachingService>().getCachedMap(AppCacheKeys.authModel);
      final authEnt = AuthEnt.fromJson(authEntJson);
      getItApp.unregister<AuthEnt>();
      getItApp.registerSingleton<AuthEnt>(authEnt);

      ///* Handle HTTP overrides
      HttpOverrides.global = MyHttpOverrides();

      ///* Setup Bloc observer for state management
      Bloc.observer = MyBlocObserver();

      ///* Set system UI overlay style
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: kTopAppBar, // status bar color
        ),
      );

      CheckState.setDefaultWidgets(
        errWidget: TechnicalErrorPage(onPress: () {
          goRouter().go(AppPaths.splash);
        }),
        loaderWidget: const LoadingFadingCircle(),
      );

      ///* Run dio request call test
      /// TODO: don't forget certificate @Rashad
      // ApiTester.test();
      // return;

      // Remove # from url
      fm.initializeUrlStrategy();
      await getItApp<RemoteConfigService>().initialize();

      debugPaintSizeEnabled = false;

      ///* add some files to your project4
      runApp(
        DevicePreview(
          enabled: false,
          builder: (context) {
            // Small width like mobile on landscape with keyboard cause overflow
            // So stop landscape in small screens width size
            if (context.width < 600) {
              ///* Set preferred orientations
              SystemChrome.setPreferredOrientations(
                [
                  DeviceOrientation.portraitUp,
                  DeviceOrientation.portraitDown,
                ],
              );
            }
            return RequestsInspector(
              hideInspectorBanner: kReleaseMode ? true : false,
              enabled: kReleaseMode ? false : true,
              navigatorKey: getIt<NavigationService>().navigatorKey,
              child: const OnyxApp(),
            );
          },
        ),
      );
    },
    (error, stack) {
      if (kDebugMode) {
        AppLogs.errorLog(error.toString());
        AppLogs.errorLog(stack.toString());
      }
    },
  );
}

