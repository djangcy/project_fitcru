// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:project_fitcru/presentation/pages/home/home_page.dart' as _i1;
import 'package:project_fitcru/presentation/pages/navigator/navigator_page.dart'
    as _i2;
import 'package:project_fitcru/presentation/pages/nutrition/nutrition_page.dart'
    as _i3;
import 'package:project_fitcru/presentation/pages/session_detail/session_detail_page.dart'
    as _i4;
import 'package:project_fitcru/presentation/pages/sessions/sessions_page.dart'
    as _i5;
import 'package:project_fitcru/presentation/pages/tracker/tracker_page.dart'
    as _i6;
import 'package:project_fitcru/presentation/pages/youtube_player/youtube_player_page.dart'
    as _i7;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    NavigatorRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.NavigatorPage(),
      );
    },
    NutritionRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.NutritionPage(),
      );
    },
    SessionDetailRoute.name: (routeData) {
      final args = routeData.argsAs<SessionDetailRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.SessionDetailPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    SessionsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SessionsPage(),
      );
    },
    TrackerRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.TrackerPage(),
      );
    },
    YoutubePlayerRoute.name: (routeData) {
      final args = routeData.argsAs<YoutubePlayerRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.YoutubePlayerPage(
          key: args.key,
          videoUrl: args.videoUrl,
          exerciseName: args.exerciseName,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.NavigatorPage]
class NavigatorRoute extends _i8.PageRouteInfo<void> {
  const NavigatorRoute({List<_i8.PageRouteInfo>? children})
      : super(
          NavigatorRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigatorRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.NutritionPage]
class NutritionRoute extends _i8.PageRouteInfo<void> {
  const NutritionRoute({List<_i8.PageRouteInfo>? children})
      : super(
          NutritionRoute.name,
          initialChildren: children,
        );

  static const String name = 'NutritionRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SessionDetailPage]
class SessionDetailRoute extends _i8.PageRouteInfo<SessionDetailRouteArgs> {
  SessionDetailRoute({
    _i9.Key? key,
    required String id,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          SessionDetailRoute.name,
          args: SessionDetailRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'SessionDetailRoute';

  static const _i8.PageInfo<SessionDetailRouteArgs> page =
      _i8.PageInfo<SessionDetailRouteArgs>(name);
}

class SessionDetailRouteArgs {
  const SessionDetailRouteArgs({
    this.key,
    required this.id,
  });

  final _i9.Key? key;

  final String id;

  @override
  String toString() {
    return 'SessionDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i5.SessionsPage]
class SessionsRoute extends _i8.PageRouteInfo<void> {
  const SessionsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SessionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SessionsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.TrackerPage]
class TrackerRoute extends _i8.PageRouteInfo<void> {
  const TrackerRoute({List<_i8.PageRouteInfo>? children})
      : super(
          TrackerRoute.name,
          initialChildren: children,
        );

  static const String name = 'TrackerRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.YoutubePlayerPage]
class YoutubePlayerRoute extends _i8.PageRouteInfo<YoutubePlayerRouteArgs> {
  YoutubePlayerRoute({
    _i9.Key? key,
    required String videoUrl,
    required String exerciseName,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          YoutubePlayerRoute.name,
          args: YoutubePlayerRouteArgs(
            key: key,
            videoUrl: videoUrl,
            exerciseName: exerciseName,
          ),
          initialChildren: children,
        );

  static const String name = 'YoutubePlayerRoute';

  static const _i8.PageInfo<YoutubePlayerRouteArgs> page =
      _i8.PageInfo<YoutubePlayerRouteArgs>(name);
}

class YoutubePlayerRouteArgs {
  const YoutubePlayerRouteArgs({
    this.key,
    required this.videoUrl,
    required this.exerciseName,
  });

  final _i9.Key? key;

  final String videoUrl;

  final String exerciseName;

  @override
  String toString() {
    return 'YoutubePlayerRouteArgs{key: $key, videoUrl: $videoUrl, exerciseName: $exerciseName}';
  }
}
