import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_fitcru/business_logic/blocs/sessions/current_session_cubit/current_session_cubit.dart';
import 'package:project_fitcru/config/router/app_router.dart';
import 'package:project_fitcru/data/models/sessions/sessions.dart';
import 'package:project_fitcru/presentation/widgets/widgets.dart';

import 'widgets/session_expansion_tile.dart';

@RoutePage()
class SessionDetailPage extends StatefulWidget {
  const SessionDetailPage({
    super.key,
    required this.id,
  });

  final String id;

  @override
  State<SessionDetailPage> createState() => _SessionDetailPageState();
}

class _SessionDetailPageState extends State<SessionDetailPage> {
  Widget _successView({required SessionModel session}) {
    return Scaffold(
      appBar: const MainAppbarWidget(),
      body: SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(12, 20, 0, 10),
                child: Text(
                  session.weekday.toDayOfWeekString(),
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: session.sessionItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    final sessionItem = session.sessionItems[index];

                    return ExpansionTileWidget(
                      title: sessionItem.exerciseName,
                      reps: sessionItem.reps,
                      restPeriod: sessionItem.restPeriod,
                      sets: sessionItem.sets,
                      note: sessionItem.note,
                      completed: sessionItem.completed ?? false,
                      maxWeight: sessionItem.weight?.toString(),
                      videoUrl: sessionItem.videoUrl,
                      onWeightChanged: (weight) => context
                          .read<CurrentSessionCubit>()
                          .updateSessionTracker(
                            sessionId: session.id,
                            itemIndex: index,
                            weight: weight,
                          ),
                      onIsCompletedChanged: (isCompleted) => context
                          .read<CurrentSessionCubit>()
                          .updateSessionTracker(
                            sessionId: session.id,
                            itemIndex: index,
                            completed: isCompleted,
                          ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              CurrentSessionCubit()..loadCurrentSession(widget.id),
        ),
      ],
      child: BlocBuilder<CurrentSessionCubit, CurrentSessionState>(
        builder: (context, state) {
          if (state is CurrentSessionLoaded && state.session != null) {
            return _successView(session: state.session!);
          }

          if (state is CurrentSessionError) {
            return Center(
              child: Text(state.message ?? 'Could Not Load Session'),
            );
          }

          if (state is CurrentSessionLoading ||
              state is CurrentSessionInitial) {
            return const Center(
              child: CircularProgressIndicatorWidget(),
            );
          }

          return const Center(
            child: Text('Could Not Load Session'),
          );
        },
      ),
    );
  }
}
