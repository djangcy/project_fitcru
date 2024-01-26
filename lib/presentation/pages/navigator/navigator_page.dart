import 'package:flutter/material.dart';
import 'package:project_fitcru/config/router/app_router.dart';
import 'package:project_fitcru/presentation/widgets/widgets.dart';

import 'widgets/bottom_navigation_bar.dart';
import 'widgets/drawer.dart';

@RoutePage()
class NavigatorPage extends StatelessWidget {
  const NavigatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: const [
        HomeRoute(),
        SessionsRoute(),
        NutritionRoute(),
      ],
      builder: (
        BuildContext context,
        Widget child,
        PageController controller,
      ) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: const MainAppbarWidget(),
          drawer: const DrawerWidget(),
          bottomNavigationBar: BottomNavigationBarWidget(
            currentIndex: tabsRouter.activeIndex,
            pageController: controller,
          ),
          body: child,
        );
      },
    );
  }
}
