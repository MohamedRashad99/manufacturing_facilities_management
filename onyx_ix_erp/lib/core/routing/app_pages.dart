import 'package:onyx_ix/core/src/common_app_export.dart';
import 'package:onyx_ix/features/landing_page/presentation/view/widgets/Demo_Request_Page/demo_request_page.dart';

GoRouter goRouter({Iterable<ScreensEnt> routes = const [], String? initUrlPath}) {
  return GoRouter(
      navigatorKey: getIt<NavigationService>().navigatorKey,
      initialLocation: initUrlPath,
      routerNeglect: true,
      debugLogDiagnostics: true,
      refreshListenable: treeNotifier,
      restorationScopeId: 'app', // Enables state restoration
      routes: <RouteBase>[
        /// splash
        GoRoute(
          path: AppPaths.splash,
          pageBuilder: (context, state) => fadePage(const Splash(), state),
        ),
        GoRoute(
          path: AppPaths.splashTwo,
          pageBuilder: (context, state) => fadePage(const SplashTwo(), state),
        ),

        /// landing
        GoRoute(
          path: AppPaths.landing,
          pageBuilder: (context, state) => fadePage(
              BlocProvider(
                  create: (_)=> getIt<LandingPageCubit>(),
                  child: Landing()), state),
        ),

        /// Subscription Details
        GoRoute(
          path: AppPaths.subscriptionDetails,
          pageBuilder: (context, state) =>
              fadePage(const DemoRequestPage(), state),
        ),

        /// auth
        GoRoute(
          path: AppPaths.signIn,
          pageBuilder: (context, state) =>
              fadePage(
                const AuthScreen(),
                state,
              ),
        ),

        ShellRoute(
          navigatorKey: getIt<NavigationService>().shellNavigatorKey,
          observers: [
            MyNavigatorObserver(getIt<NavigationService>().shellNavigatorKey),
          ],
          builder: (BuildContext context, state, child) {
            return
            /// todo : remove this comment
              // BlocProvider<ActiveTabsCubit>(
              // create: (BuildContext context) => getIt<ActiveTabsCubit>(),
              // child:
            ScreenWrapper();
            // );
          },
          routes: <GoRoute>[

            /// Dashboard
            GoRoute(
              path: AppPaths.dashboard,
              pageBuilder: (BuildContext context, state) =>
                  fadePage(const SizedBox(), state),
            ),

            /// Notification
            GoRoute(
              path: AppPaths.notifications,
              pageBuilder: (BuildContext context, state) =>
                  fadePage(const SizedBox(), state),
            ),

            ...routes.map(
                  (feature) =>
                  GoRoute(
                      path: "${feature.screenPath}:state_page",
                      pageBuilder: (context, state) =>
                          fadePage(const SizedBox(), state)),
            ),
          ],
        ),
      ],
      errorBuilder: (BuildContext context, GoRouterState state) => const Material(child: ErrorPage()),
      /// todo : return this code again
      // redirect: (BuildContext context, GoRouterState state) async {
      //   final bool isLoggedIn = await getIt<TokenService>().checkToken();
      //
      //   final bool isAuthRoute = {
      //     AppPaths.splash,
      //     AppPaths.splashTwo,
      //     AppPaths.landing,
      //     AppPaths.token,
      //     AppPaths.subscriptionDetails,
      //   }.contains(state.path);
      //
      //   // 🔄 إذا المستخدم غير مسجل دخول
      //   if (!isLoggedIn && isAuthRoute) {
      //     return state.path;
      //   }else if(isLoggedIn && !isAuthRoute && state.path == AppPaths.signIn){
      //     return AppPaths.signIn;
      //   }else{
      //     return null;
      //   }
      // },
    );
}

/// ********************* Page Transition Animation *********************
CustomTransitionPage fadePage(Widget child, GoRouterState state) {
  return CustomTransitionPage<void>(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: 150),
    transitionsBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) {
      return FadeTransition(
        opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
        child: child,
      );
    },
  );
}

/// ********************* Custom Navigator Observer *********************
class MyNavigatorObserver extends NavigatorObserver {
  final GlobalKey nav;

  MyNavigatorObserver(this.nav);

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    final currentState = goRouter().routerDelegate.currentConfiguration;
    final fullPath = currentState.uri.toString();
    super.didPush(route, previousRoute);
  }
}