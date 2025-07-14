import 'package:onyx_ix/core/src/common_app_export.dart';

class BlocProviderList {
  static List<BlocProvider> getProviders(BuildContext context) {
    return [
      BlocProvider<AppLayoutCubit>(create: (BuildContext context) => getIt<AppLayoutCubit>()),

      BlocProvider<ActiveTabsCubit>(create: (context) => getIt<ActiveTabsCubit>()),
    ];
  }
}