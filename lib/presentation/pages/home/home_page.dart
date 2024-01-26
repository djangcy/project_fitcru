import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_fitcru/business_logic/blocs/quotes/current_quote_cubit/current_quote_cubit.dart';
import 'package:project_fitcru/business_logic/blocs/sessions/session_cubit/session_cubit.dart';
import 'package:project_fitcru/business_logic/services/quotes/quotes_service.dart';
import 'package:project_fitcru/config/router/app_router.dart';
import 'package:project_fitcru/data/models/sessions/sessions.dart';
import 'package:project_fitcru/presentation/widgets/widgets.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SessionCubit>(
          create: (context) => SessionCubit()..loadSessions(),
        ),
        BlocProvider<CurrentQuoteCubit>(
          create: (context) => CurrentQuoteCubit(context.read<QuotesService>())
            ..loadCurrentQuote(),
        ),
      ],
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView(
        children: const [
          SizedBox.shrink(),
          _SessionsBlock(),
          _QuoteBlock(),
          // _FeedbackBlock(),
        ],
      ),
    );
  }
}

class _SessionsBlock extends StatelessWidget {
  const _SessionsBlock();

  String? getRelativeDayString(int weekday) {
    final DateTime today = DateTime.now();

    final int difference = weekday - today.weekday;
    if (today.weekday + difference <= 7) {
      // Same Week
      if (today.weekday == weekday) {
        return 'Today';
      } else if (today.weekday + 1 == weekday) {
        return 'Tomorrow';
      } else if (difference < 0) {
        return null;
      } else {
        return 'Later This Week';
      }
    } else {
      // Next Week or Longer
      if (difference < 14 - today.weekday) {
        return 'Next Week';
      } else {
        return 'Upcoming';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionCubit, SessionState>(
      builder: (context, state) {
        if (state is SessionLoaded) {
          final sessions = state.sessions;

          final SessionModel? nextSession = sessions
              .firstWhereOrNull((e) => e.weekday >= DateTime.now().weekday);

          if (nextSession == null) {
            return const SizedBox.shrink();
          }

          final String? relativeDay = getRelativeDayString(nextSession.weekday);

          return relativeDay != null
              ? ElevatedHeaderBlockWidget(
                  header: relativeDay,
                  content: SessionsTileWidget(
                    session: nextSession,
                    padding: EdgeInsets.zero,
                  ),
                )
              : const SizedBox.shrink();
        } else {
          return const Center(child: CircularProgressIndicatorWidget());
        }
      },
    );
  }
}

class _QuoteBlock extends StatefulWidget {
  const _QuoteBlock();

  @override
  State<_QuoteBlock> createState() => _QuoteBlockState();
}

class _QuoteBlockState extends State<_QuoteBlock> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentQuoteCubit, CurrentQuoteState>(
      builder: (context, state) {
        if (state is! CurrentQuoteLoaded) {
          return const SizedBox.shrink();
        }

        return ElevatedHeaderBlockWidget(
          header: 'Daily Quote',
          content: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 5),
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () => setState(() {
                    _isExpanded = !_isExpanded;
                  }),
                  child: Text(
                    state.quote?.text ?? '',
                    maxLines: _isExpanded ? 100 : 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  '- ${state.quote?.author ?? 'Anonymous'}',
                  maxLines: 2,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
