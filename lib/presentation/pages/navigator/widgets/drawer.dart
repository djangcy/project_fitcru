import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_fitcru/business_logic/blocs/auth_user/auth_user/auth_user_cubit.dart';
import 'package:project_fitcru/config/router/app_router.dart';
import 'package:project_fitcru/theme_setting.dart';

import 'drawer_button.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Widget successWidget({
      required String name,
      required String email,
    }) {
      return ColoredBox(
        color: Theme.of(context).colorScheme.secondary,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () {
                  final ThemeMode themeMode = ThemeSetting().getTheme;
                  if (themeMode == ThemeMode.dark) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      ThemeSetting().setTheme(ThemeMode.light);
                    });
                  } else {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      ThemeSetting().setTheme(ThemeMode.dark);
                    });
                  }
                },
                icon: Icon(
                  ThemeSetting().getTheme == ThemeMode.dark
                      ? Icons.nights_stay_outlined
                      : Icons.wb_sunny_outlined,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 20, 0, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Text(
                    email,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Drawer(
      child: SafeArea(
        maintainBottomViewPadding: true,
        child: Flex(
          direction: Axis.vertical,
          children: [
            BlocBuilder<AuthUserCubit, AuthUserState>(
              builder: (context, state) {
                final user = state.authUser;

                return successWidget(
                  email: user.email ?? '',
                  name: user.username ?? '',
                );
              },
            ),

            // Drawer contents
            DrawerButtonWidget(
              onPressed: () {
                context.router.push(const TrackerRoute());
              },
              icon: Icons.analytics_outlined,
              labelText: 'Tracker',
            ),
            // const Spacer(),
            // ThemedDrawerButtonWidget(
            //   onTap: () {
            //     // context
            //     //     .read<AuthenticationBloc>()
            //     //     .add(SignOutUser(userBloc: context.read<UserBloc>()));
            //   },
            //   buttonColor:
            //       Theme.of(context).colorScheme.onBackground.withOpacity(0.5,),
            //   textColor: Theme.of(context).colorScheme.background,
            //   icon: Icons.logout,
            //   text: 'Logout',
            // ),
          ],
        ),
      ),
    );
  }
}
