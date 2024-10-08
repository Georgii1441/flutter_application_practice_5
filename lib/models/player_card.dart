class PlayerCard {
  int playerCardId;
  final String footballerName;
  final String description;
  final String photoUrl;
  bool isFavorite;

  PlayerCard(
      {required this.playerCardId,
      required this.footballerName,
      required this.description,
      required this.photoUrl,
      this.isFavorite = false});
}
