import 'package:flutter/material.dart';
import '../components/item_player_card.dart';
import '../models/player_card.dart';
import '../pages/home_page.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  int _currentPlayerId = playerCards[playerCards.length - 1].playerCardId;

  List<PlayerCard> favoriteCards =
      playerCards.where((card) => card.isFavorite).toList();

  void _toggleFavorite(int playerCardId) {
    setState(() {
      final PlayerCard card =
          playerCards.firstWhere((card) => card.playerCardId == playerCardId);
      card.isFavorite = !card.isFavorite;
    });
  }

  void _deletePlayerCard(int index) {
    setState(() {
      playerCards.removeAt(index);
      _currentPlayerId--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 26, 35, 126),
        titleTextStyle: const TextStyle(
          color: Color.fromARGB(255, 255, 152, 0),
          fontSize: 32,
        ),
        title: const Center(
          child: Text('Карточки футболистов'),
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: favoriteCards.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: Key(favoriteCards[index].playerCardId.toString()),
            onDismissed: (direction) {
              String footballerName = favoriteCards[index].footballerName;
              _deletePlayerCard(index);
              _toggleFavorite(index);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Футболист $footballerName был удалён')),
              );
            },
            child: ItemPlayerCard(
              playerCard: favoriteCards[index],
              onDelete: (int id) => {
                setState(() {
                  favoriteCards.removeWhere((card) => card.playerCardId == id);
                  playerCards.removeWhere((card) => card.playerCardId == id);
                })
              },
              onToggleFavorite: (int id) => {
                setState(() {
                  favoriteCards.removeWhere((card) => card.playerCardId == id);
                })
              },
            ),
          );
        },
      ),
    );
  }
}
