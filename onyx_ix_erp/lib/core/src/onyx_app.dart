import 'onyx_ix_app_export.dart';

class OnyxApp extends StatelessWidget {
  const OnyxApp({super.key});

  @override
  Widget build(BuildContext context) {
    ConnectivityState? previousState;
    return MultiBlocProvider(
      providers: BlocProviderList.getProviders(context),

      /// todo : need check this part of code that rebuilds the app when get tree
      child: ValueListenableBuilder<Map<String, ScreensEnt>?>(
        valueListenable: treeNotifier,
        builder: (context, treeRoutes, child) {
          String? initPath = getIt<ActiveTabsCubit>().state.initUrlPath ??
              ((treeRoutes?.values ?? []).isEmpty
                  ? AppPaths.splash
                  : AppPaths.dashboard);

          final routerConfig = goRouter(routes: treeRoutes?.values ?? [], initUrlPath: initPath);
          return BlocBuilder<LocalizationCubit, LocalizationState>(
            buildWhen: (previous, current) => previous != current,
            builder: (_, localeState) {
              return MaterialApp.router(
                routerConfig: routerConfig,
                restorationScopeId: 'router',
                localizationsDelegates: const [
                  AppLocalizationDelegate(),
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: AppLocalization.supportedLocales,
                localeResolutionCallback: (deviceLocale, supportedLocales) {
                  for (var locale in supportedLocales) {
                    if (deviceLocale != null &&
                        deviceLocale.languageCode == locale.languageCode) {
                      return deviceLocale;
                    }
                  }
                  return supportedLocales.first;
                },
                locale: localeState.locale,
                scrollBehavior: const MaterialScrollBehavior().copyWith(
                  dragDevices: {
                    PointerDeviceKind.mouse,
                    PointerDeviceKind.touch,
                    PointerDeviceKind.stylus,
                    PointerDeviceKind.unknown
                  },
                ),
                debugShowCheckedModeBanner: false,
                title: AppData.appName,
                theme: appThemeData[AppTheme.lightAppTheme],
                builder: (context, child) {
                  /// todo : remove BlocConsumer from here and using network service class
                  return BlocConsumer<ConnectivityCubit, ConnectivityState>(
                    listener: (context, state) {
                      if (state == ConnectivityState.disconnected) {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          Alert.sideToast(
                            context: context,
                            message:
                                'no_internet_connection_message'.tr(context),
                            subMessages: [
                              'no_internet_connection_submessage'.tr(context)
                            ],
                            backgroundColor: kButtonDeleteBackGround,
                            textColor: kButtonDelete,
                            icon: Icons.cancel_rounded,
                          );
                        });
                      } else if (state == ConnectivityState.connected &&
                          previousState == ConnectivityState.disconnected) {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          Alert.sideToast(
                            message:
                                'connected_to_internet_message'.tr(context),
                            context: context,
                            subMessages: [
                              'connected_to_internet_submessage'.tr(context)
                            ],
                            backgroundColor: kCardGreenColoBackgroundColor,
                            textColor: kCardGreenColor,
                            icon: Icons.check_circle,
                          );
                        });
                      }
                      previousState = state; // Update previous state
                    },
                    builder: (context, state) {
                      return MediaQuery(
                        data: MediaQuery.of(context)
                            .copyWith(textScaler: const TextScaler.linear(1.0)),
                        child: child ?? const SizedBox(),
                        // child: CheckState(
                        //   isError: appLayoutState.status!.isError,
                        //   isLoading: appLayoutState.status!.isLoading,
                        //   customErrWidget: const ErrorWidgetIX(),
                        //   child: child ?? const SizedBox(),
                        // ),
                      );
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
