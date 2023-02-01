import 'package:flutter/material.dart';

import 'utils/router.dart';
import 'utils/routes.dart';

void main() {
  runApp(const EmiratesHRApp());
}

class EmiratesHRApp extends StatelessWidget {
  const EmiratesHRApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emirates HR',
      onGenerateRoute: generateRoute,
      initialRoute: Routes.profile,
      theme: ThemeData(
        textTheme: TextTheme(
          labelMedium: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: Colors.grey.shade400,
                fontWeight: FontWeight.bold,
              ),
          titleLarge: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.blueGrey,
                fontWeight: FontWeight.w600,
              ),
          headlineLarge: Theme.of(context).textTheme.headline5?.copyWith(
                color: Colors.grey.shade200,
                fontWeight: FontWeight.w300,
              ),
          bodyMedium: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Colors.white54),
        ),
      ),
    );
  }
}
