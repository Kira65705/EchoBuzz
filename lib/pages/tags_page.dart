import 'package:flutter/material.dart';

import '../data/mock_data.dart';
import '../models/character.dart';
import '../theme/app_theme.dart';
import '../widgets/character_card.dart';
import '../widgets/search_field.dart';
import 'chat_page.dart';

class TagsPage extends StatefulWidget {
  const TagsPage({super.key});

  @override
  State<TagsPage> createState() => _TagsPageState();
}

class _TagsPageState extends State<TagsPage> {
  String _query = '';
  String _category = tagCategories.first;

  @override
  Widget build(BuildContext context) {
    final filtered = mockCharacters.where((c) {
      final matchQuery = c.name.toLowerCase().contains(_query.toLowerCase()) ||
          c.description.toLowerCase().contains(_query.toLowerCase());
      final matchCat = _category == 'Category' || c.category == _category;
      return matchQuery && matchCat;
    }).toList();

    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Row(
              children: [
                Expanded(
                  child: SearchField(
                    onChanged: (value) => setState(() => _query = value),
                  ),
                ),
                const SizedBox(width: 10),
                _RoundIconButton(
                  icon: Icons.ios_share,
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Share is a local placeholder.')),
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 44,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Icon(Icons.apps, color: AppColors.textSecondary),
                ),
                for (final cat in tagCategories)
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ChoiceChip(
                      label: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (cat == 'Category') ...[
                            const Icon(Icons.diamond_outlined, size: 14),
                            const SizedBox(width: 4),
                          ],
                          Text(cat),
                        ],
                      ),
                      selected: _category == cat,
                      onSelected: (_) => setState(() => _category = cat),
                      selectedColor: AppColors.chipSelected,
                      backgroundColor: AppColors.chip,
                      side: BorderSide(
                        color: _category == cat ? AppColors.accent : AppColors.border,
                      ),
                      labelStyle: TextStyle(
                        color: _category == cat
                            ? AppColors.textPrimary
                            : AppColors.textSecondary,
                      ),
                      showCheckmark: false,
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 100),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 0.68,
              ),
              itemCount: filtered.length,
              itemBuilder: (context, index) {
                final character = filtered[index];
                return CharacterCard(
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

void openChat(BuildContext context, Character character) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => ChatPage(character: character)),
  );
}

class _RoundIconButton extends StatelessWidget {
  const _RoundIconButton({required this.icon, required this.onTap});

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      customBorder: const CircleBorder(),
      child: Container(
        width: 42,
        height: 42,
        decoration: const BoxDecoration(
          color: AppColors.surfaceAlt,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: AppColors.textSecondary, size: 20),
      ),
    );
  }
}
