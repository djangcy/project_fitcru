// Original code by https://github.com/djangcy
// Licensed under Mozilla Public License 2.0

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_fitcru/bootstrap.dart';
import 'package:project_fitcru/config/themes/theme.dart';
import 'package:project_fitcru/theme_setting.dart';

import 'config/router/app_router.dart';

void main() async {
  Bloc.observer = AppBlocObserver();
  await bootstrap(() => const App());
}

final _appRouter = AppRouter().config(
  navigatorObservers: () => [RouteObserver()],
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: themeSettings,
      builder: (context, _) {
        return MaterialApp.router(
          theme: AppTheme().light,
          darkTheme: AppTheme().dark,
          themeMode: themeSettings.getTheme,
          routerConfig: _appRouter,
        );
      },
    );
  }
}

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    debugPrint('$bloc | $change');
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
    debugPrint('$bloc | $event');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    debugPrint('OnError: $bloc | $error');
  }
}
