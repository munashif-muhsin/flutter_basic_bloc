import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/error/presentation/error_page.dart';
import '../features/profile/bloc/profile_bloc.dart';
import '../features/profile/presentation/profile_page.dart';
import 'routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  try {
    switch (settings.name) {
      case Routes.profile:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => ProfileBloc(),
            child: const ProfilePage(),
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(error: ''),
        );
    }
  } catch (e) {
    return MaterialPageRoute(
      builder: (context) => const ErrorPage(
        error: 'Something went wrong. Please try again later.',
      ),
    );
  }
}
