import 'package:flutter/material.dart';

import '../data/mock_data.dart';
import '../theme/app_theme.dart';
import '../widgets/trend_tile.dart';
import 'tags_page.dart';

class TrendPage extends StatefulWidget {
  const TrendPage({super.key});

  @override
  State<TrendPage> createState() => _TrendPageState();
}

class _TrendPageState extends State<TrendPage> {
  bool _showSearch = false;
  String _query = '';

  @override
  Widget build(BuildContext context) {
    final items = mockCharacters.where((c) {
      if (_query.isEmpty) return true;
      return c.name.toLowerCase().contains(_query.toLowerCase()) ||
          c.author.toLowerCase().contains(_query.toLowerCase());
    }).toList()
      ..sort((a, b) => b.chatCountLabel.compareTo(a.chatCountLabel));

    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
            child: Row(
              children: [
                const Spacer(),
                IconButton(
                  onPressed: () => setState(() => _showSearch = !_showSearch),
                  icon: const Icon(Icons.search, color: AppColors.textPrimary),
                ),
              ],
            ),
          ),
          if (_showSearch)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
              child: TextField(
                autofocus: true,
                onChanged: (value) => setState(() => _query = value),
                style: const TextStyle(color: AppColors.textPrimary),
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: const TextStyle(color: AppColors.textMuted),
                  filled: true,
                  fillColor: AppColors.surfaceAlt,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(bottom: 100),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final character = items[index];
                return TrendTile(
                  character: character,
                  onTap: () => openChat(context, character),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
