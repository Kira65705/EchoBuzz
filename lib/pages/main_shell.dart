import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import '../widgets/app_bottom_nav.dart';
import 'chat_list_page.dart';
import 'profile_page.dart';
import 'tags_page.dart';
import 'trend_page.dart';

class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          IndexedStack(
            index: _index,
            children: const [
              TagsPage(),
              TrendPage(),
              ChatListPage(),
              ProfilePage(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: AppBottomNav(
              currentIndex: _index,
              onSelect: (value) => setState(() => _index = value),
              onPlus: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Create character is a local placeholder.')),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
