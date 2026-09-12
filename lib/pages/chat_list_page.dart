import 'package:flutter/material.dart';

import '../data/mock_data.dart';
import '../widgets/chat_session_tile.dart';
import 'tags_page.dart';

class ChatListPage extends StatelessWidget {
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 8, bottom: 100),
        itemCount: mockSessions.length,
        itemBuilder: (context, index) {
          final session = mockSessions[index];
          final character = characterById(session.characterId);
          return ChatSessionTile(
            character: character,
            preview: session.preview,
            timeLabel: session.timeLabel,
            onTap: () => openChat(context, character),
          );
        },
      ),
    );
  }
}
