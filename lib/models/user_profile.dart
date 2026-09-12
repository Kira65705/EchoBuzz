class UserProfile {
  const UserProfile({
    required this.displayName,
    required this.friendCode,
    required this.energy,
    required this.language,
    this.isGuest = true,
  });

  final String displayName;
  final String friendCode;
  final int energy;
  final String language;
  final bool isGuest;
}
