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
    return const MaterialApp(
      title: 'Emirates HR',
      onGenerateRoute: generateRoute,
      initialRoute: Routes.profile,
    );
  }
}
