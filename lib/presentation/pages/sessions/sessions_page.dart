import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_fitcru/business_logic/blocs/sessions/session_cubit/session_cubit.dart';
import 'package:project_fitcru/config/router/app_router.dart';
import 'package:project_fitcru/data/models/sessions/sessions.dart';
import 'package:project_fitcru/presentation/ui_constants.dart';
import 'package:project_fitcru/presentation/widgets/widgets.dart';

@RoutePage()
class SessionsPage extends StatelessWidget {
  const SessionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SessionCubit>(
      create: (context) {
        return SessionCubit()..loadSessions();
      },
      child: const SessionsView(),
    );
  }
}

class SessionsView extends StatelessWidget {
  const SessionsView({super.key});

  void _refreshData(BuildContext context) {
    context.read<SessionCubit>().loadSessions();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionCubit, SessionState>(
      builder: (context, state) {
        if (state is! SessionLoaded) {
          return const Center(child: CircularProgressIndicatorWidget());
        }

        final List<SessionModel> sessionList = state.sessions;

        return Scaffold(
          body: RefreshIndicatorWidget(
            onRefresh: () async {
              await Future.delayed(
                Duration(milliseconds: animationTime),
                () => _refreshData(context),
              );
            },
            child: SizedBox(
              height: double.infinity,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.fromLTRB(12, 20, 0, 5),
                      child: Text(
                        'All Sessions',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ListView.builder(
                        itemCount: sessionList.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return SessionsTileWidget(
                            session: sessionList[index],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
