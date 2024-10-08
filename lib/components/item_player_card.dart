import 'package:flutter/material.dart';
import '../models/player_card.dart';
import '../pages/player_page.dart';

class ItemPlayerCard extends StatelessWidget {
  final PlayerCard playerCard;
  final Function(int) onDelete;
  final Function(int) onToggleFavorite;

  const ItemPlayerCard(
      {super.key,
      required this.playerCard,
      required this.onDelete,
      required this.onToggleFavorite});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                PlayerPage(playerCard: playerCard, onDelete: onDelete),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 152, 0),
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: const Color.fromARGB(255, 134, 80, 0),
              width: 3.0,
            ),
          ),
          width: double.infinity,
          constraints: const BoxConstraints(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                IconButton(
                  icon: Icon(
                    playerCard.isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: const Color.fromARGB(255, 26, 35, 126),
                  ),
                  onPressed: () {
                    onToggleFavorite(playerCard.playerCardId);
                  },
                ),
                Center(
                  child: Text(
                    playerCard.footballerName,
                    style: const TextStyle(
                        fontSize: 14, color: Color.fromARGB(255, 33, 33, 33)),
                    overflow: TextOverflow.ellipsis, // Handle overflow
                    maxLines: 1, // Limit to one line
                  ),
                ),
                Text(
                  playerCard.description,
                  style: const TextStyle(
                      fontSize: 11, color: Color.fromARGB(255, 26, 35, 126)),
                  overflow: TextOverflow.ellipsis, // Handle overflow
                  maxLines: 2, // Limit to two lines
                ),
                const SizedBox(height: 8),
                Image.network(
                  playerCard.photoUrl,
                  height: 30,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
