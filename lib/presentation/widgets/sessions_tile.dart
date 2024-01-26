import 'package:flutter/material.dart';
import 'package:project_fitcru/config/router/app_router.dart';
import 'package:project_fitcru/data/models/sessions/sessions.dart';

class SessionsTileWidget extends StatelessWidget {
  const SessionsTileWidget({
    super.key,
    required this.session,
    this.padding,
  });

  final SessionModel session;

  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.fromLTRB(20, 15, 20, 0),
      child: ElevatedButton(
        onPressed: () {
          context.router.push(SessionDetailRoute(id: session.id));
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            Theme.of(context).colorScheme.secondary,
          ),
          shadowColor:
              MaterialStateProperty.all<Color>(Theme.of(context).shadowColor),
          elevation: MaterialStateProperty.all<double>(4),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 5),
                  child: Text(
                    session.weekday.toDayOfWeekString(),
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                  margin: const EdgeInsets.fromLTRB(0, 0, 50, 0),
                  child: Text(
                    Helpers.getItemSubtitle(session.sessionItems.length),
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.headline5,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Container(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.35),
              width: 2,
              height: 45,
            ),
            Container(
              constraints: const BoxConstraints(maxWidth: 35),
              padding: const EdgeInsets.fromLTRB(13, 0, 0, 0),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color:
                    Theme.of(context).colorScheme.onSurface.withOpacity(0.35),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Helpers {
  static String getItemSubtitle(int sessionCount) {
    String suffix;

    if (sessionCount > 1) {
      suffix = 'Exercises';
    } else {
      suffix = 'Exercise';
    }

    final String subtitle = '$sessionCount $suffix';

    return subtitle;
  }
}
