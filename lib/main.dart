import 'package:flutter/material.dart';

import 'pages/main_shell.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const EchoBuzzApp());
}

class EchoBuzzApp extends StatelessWidget {
  const EchoBuzzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EchoBuzz',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark(),
      themeMode: ThemeMode.dark,
      home: const MainShell(),
    );
  }
}
