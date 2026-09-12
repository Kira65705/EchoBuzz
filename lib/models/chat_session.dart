class ChatSession {
  const ChatSession({
    required this.id,
    required this.characterId,
    required this.preview,
    required this.timeLabel,
  });

  final String id;
  final String characterId;
  final String preview;
  final String timeLabel;
}
