import 'dart:async';

import 'package:amd_group_test/app.dart';
import 'package:amd_group_test/core/core.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await initDependency();
      HydratedBloc.storage = await HydratedStorage.build(
        storageDirectory: await getApplicationDocumentsDirectory(),
      );

      runApp(const App());
    },
    (error, stack) => AppLogger.logError(error: error, stackTrace: stack),
  );
}
