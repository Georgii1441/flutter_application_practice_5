import 'package:flutter/material.dart';
import '../components/item_player_card.dart';
import '../models/player_card.dart';
import '../pages/add_player_page.dart';

List<PlayerCard> playerCards = <PlayerCard>[
  PlayerCard(
    playerCardId: 1,
    footballerName: 'Lionel Messi',
    description:
        'Аргентинский футболист, многократный обладатель "Золотого мяча", известный как один из лучших игроков в истории футбола.',
    photoUrl:
        'https://yastatic.net/naydex/yandex-search/Uqw6lg945/54b1d7rxKm/T48jzOlVBLugPeVYNiXq7SNrvLyduSSifn-8vSFAMOePEXF3YTkLAcon_ARkBdiBo3vj3qYfenC_Cyeg5_homAuWCPLaZ2iJixyCZh4F9-k1Ibehx-Q2mFVyobsnCQ',
  ),
  PlayerCard(
    playerCardId: 2,
    footballerName: 'Cristiano Ronaldo',
    description:
        'Португальский футболист, обладатель многочисленных наград, известен своей выдающейся результативностью.',
    photoUrl:
        'https://yastatic.net/naydex/yandex-search/Uqw6lg998/54b1d7rxKm/T48jzOlVBLugPeVYNiXq7SNrvLyduSSifn-8vSFAMOePEXF3YTkLAc8l-gRrC8CXr3rh16EcfXGhd0Km57BFkmbcL_LEZ2uUmwGZaBACwPE6K7a8kbgxslUN-as9W2Q',
  ),
  PlayerCard(
    playerCardId: 3,
    footballerName: 'Kylian Mbappé',
    description:
        'Французский нападающий, который стал чемпионом мира в 2018 году в возрасте 19 лет.',
    photoUrl:
        'https://yastatic.net/naydex/yandex-search/Uqw6lg998/54b1d7rxKm/T48jzOlVBLugPeVYNiXq7SNrvLyduSSifn-8vSFAMOePEXF3YTkLAcwk_gplCc6Xr33j2KsZdnmld0Km57BFkmbcL_LEZ2uUmwGZaBACwPE6K7a8kbgxslUN-as9W2Q',
  ),
  PlayerCard(
    playerCardId: 4,
    footballerName: 'Neymar Jr.',
    description:
        'Бразильский нападающий, известный своим дриблингом и зрелищной игрой.',
    photoUrl:
        'https://yastatic.net/naydex/yandex-search/Uqw6lg998/54b1d7rxKm/T48jzOlVBLugPeVYNiXq7SNrvLyduSSifn-8vSFAMOePEXF3YTkLAcgj9QBlDseXr3rg1qcafXKnd0Km57BFkmbcL_LEZ2uUmwGZaBACwPE6K7a8kbgxslUN-as9W2Q',
  ),
  PlayerCard(
    playerCardId: 5,
    footballerName: 'Kevin De Bruyne',
    description:
        'Бельгийский полузащитник, известный своей точностью передач и видением поля.',
    photoUrl:
        'https://yastatic.net/naydex/yandex-search/Uqw7lg051/54b1d7rxKm/T48jzOlVBLugPeVYNiXq7SNrvLyduSSifn-8vSFAMOePEXF3YTkLAcwh9QdoBcCJuXbn3aMZfXClaT7D4bANv2yxZdXEeWuXhhGEcx4Mx8YiJLy9jO5ttX8NhvMtQTa-',
  ),
  PlayerCard(
    playerCardId: 6,
    footballerName: 'Robert Lewandowski',
    description:
        'Польский нападающий, один из лучших бомбардиров в истории европейского футбола.',
    photoUrl:
        'https://yastatic.net/naydex/yandex-search/Uqw6lg998/54b1d7rxKm/T48jzOlVBLugPeVYNiXq7SNrvLyduSSifn-8vSFAMOePEXF3YTkLAcwo9ABvCcWXr3rg2qIfenmid0Km57BFkmbcL_LEZ2uUmwGZaBACwPE6K7a8kbgxslUN-as9W2Q',
  ),
  PlayerCard(
    playerCardId: 7,
    footballerName: 'Mohamed Salah',
    description:
        'Египетский нападающий, играющий за "Ливерпуль", известен своей скоростью и голевым чутьем.',
    photoUrl:
        'https://yastatic.net/naydex/yandex-search/Uqw6lg945/54b1d7rxKm/T48jzOlVBLugPeVYNiXq7SNrvLyduSSifn-8vSFAMOePEXF3YTkLAcQi-gZkCtiApnjk2qMadnG_Cyeg5_homAuWCPLaZ2iJixyCZh4F9-k1Ibehx-Q2mFVyobsnCQ',
  ),
  PlayerCard(
    playerCardId: 8,
    footballerName: 'Virgil van Dijk',
    description:
        'Голландский защитник, капитан сборной Нидерландов, известен своей надежностью в обороне.',
    photoUrl:
        'https://yastatic.net/naydex/yandex-search/Uqw6lg998/54b1d7rxKm/T48jzOlVBLugPeVYNiXq7SNrvLyduSSifn-8vSFAMOePEXF3YTkLAcwi_wRsCcCXoXbh2KEafXSpd0Km57BFkmbcL_LEZ2uUmwGZaBACwPE6K7a8kbgxslUN-as9W2Q',
  ),
  PlayerCard(
    playerCardId: 9,
    footballerName: 'Sergio Ramos',
    description:
        'Испанский защитник, известный своей агрессивной манерой игры и лидерскими качествами.',
    photoUrl:
        'https://yastatic.net/naydex/yandex-search/Uqw6lg998/54b1d7rxKm/T48jzOlVBLugPeVYNiXq7SNrvLyduSSifn-8vSFAMOePEXF3YTkLAc8i-wtqC8GXr3rg3aIff3apd0Km57BFkmbcL_LEZ2uUmwGZaBACwPE6K7a8kbgxslUN-as9W2Q',
  ),
  PlayerCard(
    playerCardId: 10,
    footballerName: 'Erling Haaland',
    description:
        'Норвежский нападающий, который прославился своей результативностью в "Боруссии Дортмунд" и "Манчестер Сити".',
    photoUrl:
        'https://yastatic.net/naydex/yandex-search/Uqw6lg998/54b1d7rxKm/T48jzOlVBLugPeVYNiXq7SNrvLyduSSifn-8vSFAMOePEXF3YTkLAcwo_wFsCM-Xr3rm3qMTe3Wjd0Km57BFkmbcL_LEZ2uUmwGZaBACwPE6K7a8kbgxslUN-as9W2Q',
  ),
  PlayerCard(
    playerCardId: 11,
    footballerName: 'Luka Modrić',
    description:
        'Хорватский полузащитник, получивший "Золотой мяч" за выдающуюся игру на Чемпионате мира 2018 года.',
    photoUrl:
        'https://yastatic.net/naydex/yandex-search/Uqw6lg998/54b1d7rxKm/T48jzOlVBLugPeVYNiXq7SNrvLyduSSifn-8vSFAMOePEXF3YTkLAcwj-QZkBMWXr3rg3acfe3and0Km57BFkmbcL_LEZ2uUmwGZaBACwPE6K7a8kbgxslUN-as9W2Q',
  ),
  PlayerCard(
    playerCardId: 12,
    footballerName: 'Eden Hazard',
    description:
        'Бельгийский вингер, известен своим дриблингом и игрой за сборную Бельгии и "Реал Мадрид".',
    photoUrl:
        'https://yastatic.net/naydex/yandex-search/Uqw6lg998/54b1d7rxKm/T48jzOlVBLugPeVYNiXq7SNrvLyduSSifn-8vSFAMOePEXF3YTkLAckm9QZlDMCXr3rg2KUad3mpd0Km57BFkmbcL_LEZ2uUmwGZaBACwPE6K7a8kbgxslUN-as9W2Q',
  ),
  PlayerCard(
    playerCardId: 13,
    footballerName: 'Karim Benzema',
    description:
        'Французский нападающий, известен долгой и успешной карьерой в "Реал Мадрид".',
    photoUrl:
        'https://yastatic.net/naydex/yandex-search/Uqw6lg998/54b1d7rxKm/T48jzOlVBLugPeVYNiXq7SNrvLyduSSifn-8vSFAMOePEXF3YTkLAc8i_wRtCsKXr3rg1qAaeHCmd0Km57BFkmbcL_LEZ2uUmwGZaBACwPE6K7a8kbgxslUN-as9W2Q',
  ),
  PlayerCard(
    playerCardId: 14,
    footballerName: 'Raheem Sterling',
    description:
        'Английский вингер, известный своей скоростью и игрой за "Манчестер Сити" и сборную Англии.',
    photoUrl:
        'https://s.hs-data.com/dpa/urn-newsml-dpa-com-20090101-211014-99-601433_large_4_3.jpg',
  ),
  PlayerCard(
    playerCardId: 15,
    footballerName: 'Toni Kroos',
    description:
        'Немецкий полузащитник, известный своей тактической дисциплиной и точными передачами.',
    photoUrl:
        'https://yandex-images.clstorage.net/cst4T7284/0c7efdDW/CHrdWBpK_rPWoj6-ElLMMoA5D-UTsT15NhdpOqmnjukRE5DaobE9mzasJ8uErDF-hRiKlQlXIZFHmElxpEXg960u6FwPbutXpqJv-qL2DZJBOFskx4BpWKZXHKpstD17UyHmGHfD-vn0eNeeZPk1b-RcyVOddgQnU48tYVXWFMLLO_8oSnjPp_fhHprSo65hkUqbxYGjaOuDB0rdWNRcSxMSt7jU0UjoJinmjfRaFhqnTKqTWiYGBONfjADFp8ViSysuacpo_8cF40wL8aG-wvM66lcywwqpUkVZ_gl03HhwoLSLhrIaeEXrFX6VqlWKdD6aY0hHxyWAvg4ihOek84torRkKeI8FFAE9uLMx39IBKxhG82I7WSFF6cw4FX8bECDk-gSjOjgVqXdOJDhFqJYeCLJL5KZ2k2w9I6Ul1VPLGJ2qSxnPZacB3Rizcl-z4EsYlWGSCMuTRsscSeV-qjIDFfjW08jJJZtVbkQZdCpUH9qTy0dEJlNuHtLGhnSxqHrceYopbPeGwI86M7FdcvMYCRXhwvmZQrV5rQumrPmQQsS7plA76sfLJZ_32mbYRPwac3tkR3dwL1zwpif3MZqJDHpKaN1GlAEtKAMQHuJwi5nGYzNZW3Nn6x_7Vu_ZcpEk6ZSBW4gkueecpAh2y5ce-rDrpFUlkhycIZfF5mP462wZ6zu8tgay3zlz49_BwCgpxYMAyTsSd-osCZTvC9PS94hHcVjrl5vGr-Upp_qn__uCGRQnNKCunNP1d8WzqDj_-0lazdf3Yg2bsIKcorEqCxSxEUu5QPfrTcrXPShDQkV4RrOJ6fSoJTxm-0eZ1b0b4Om0tSZA3axAlqS0cMvrPymqyc9FpxBe6DLx_IBCCimHY9LpC7Jn6__7R60Jo2E3quexCBt32Ff9BAkkCjVfynNaRAV24B-_IwamBlBa2t2JOWqt17Sz3avDQCwgcovKRQGxaAuw17usOrWes',
  ),
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPlayerId = playerCards[playerCards.length - 1].playerCardId;

  void _addNewPlayerCard(PlayerCard playerCard) {
    setState(() {
      _currentPlayerId++;
      playerCard.playerCardId = _currentPlayerId;
      playerCards.add(playerCard);
    });
  }

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
        itemCount: playerCards.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: Key(playerCards[index].playerCardId.toString()),
            onDismissed: (direction) {
              String footballerName = playerCards[index].footballerName;
              _deletePlayerCard(index);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Футболист $footballerName был удалён')),
              );
            },
            child: ItemPlayerCard(
                playerCard: playerCards[index],
                onDelete: (int id) => {
                      setState(() {
                        playerCards
                            .removeWhere((card) => card.playerCardId == id);
                      })
                    },
                onToggleFavorite: (int id) => _toggleFavorite(id)),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddPlayerPage(onSubmit: _addNewPlayerCard),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
