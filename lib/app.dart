import 'package:amd_group_test/constants/color_schemes.g.dart';
import 'package:amd_group_test/core/core.dart';
import 'package:amd_group_test/features/photos/presentation/bloc/download_photo/download_photo_bloc.dart';
import 'package:amd_group_test/features/photos/presentation/bloc/photos/photos_bloc.dart';
import 'package:amd_group_test/features/photos/presentation/pages/photo_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => sl<PhotosBloc>(),
          ),
          BlocProvider(
            create: (context) => sl<DownloadPhotoBloc>(),
          ),
        ],
        child: MaterialApp(
          theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
          darkTheme:
              ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
          home: const PhotoPage(),
        ),
      );
}
