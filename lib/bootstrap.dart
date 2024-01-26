import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:project_fitcru/business_logic/blocs/auth_user/auth_user/auth_user_cubit.dart';
import 'package:project_fitcru/business_logic/services/images/image_service.dart';
import 'package:project_fitcru/business_logic/services/quotes/quotes_service.dart';
import 'package:project_fitcru/data/repositories/auth/local/auth.dart';
import 'package:project_fitcru/data/repositories/images/remote/image_repository.dart';
import 'package:project_fitcru/data/repositories/quotes/local/quotes_storage.dart';
import 'package:project_fitcru/data/repositories/quotes/remote/quotes/quotes.dart';
import 'package:project_fitcru/data/services/storage/storage.dart';
import 'package:project_fitcru/firebase_options.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );

      await Hive.initFlutter();
      initializedStorageService = HiveStorageService();
      await initializedStorageService!.init();

      runApp(
        // Global Repository Providers
        MultiRepositoryProvider(
          providers: [
            RepositoryProvider<AuthRepository>(
              create: (context) => const AuthRepository(),
            ),
            RepositoryProvider<StorageService>(
              create: (context) => HiveStorageService(),
              lazy: false,
            ),
            RepositoryProvider(
              create: (context) => QuotesService(
                QuotesRepositoryImpl(),
                QuotesStorage(
                  initializedStorageService!,
                ),
              ),
            ),
            RepositoryProvider(
              create: (context) => ImageService(
                ImageRepository(),
              ),
            ),
          ],
          // Global Bloc Providers
          child: MultiBlocProvider(
            providers: [
              BlocProvider<AuthUserCubit>(
                create: (context) =>
                    AuthUserCubit(context.read<AuthRepository>())
                      ..loadAuthUser(),
              ),
            ],
            child: await builder(),
          ),
        ),
      );
    },
    (error, stackTrace) {
      debugPrint('$error | $stackTrace');
    },
  );
}
