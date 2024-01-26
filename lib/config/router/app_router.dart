import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

export 'package:auto_route/auto_route.dart';
export 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: NavigatorRoute.page,
          initial: true,
          children: [
            AutoRoute(
              initial: true,
              page: HomeRoute.page,
            ),
            AutoRoute(
              page: SessionsRoute.page,
            ),
            AutoRoute(
              page: NutritionRoute.page,
            ),
          ],
        ),
        AutoRoute(page: SessionDetailRoute.page),
        AutoRoute(page: YoutubePlayerRoute.page),
        AutoRoute(page: TrackerRoute.page),
      ];
}
