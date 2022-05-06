import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/widgets/main_title.dart';
import 'package:netflix_app/presentation/widgets/movie_tile_card.dart';
import 'package:netflix_app/presentation/home/widgets/tile_number_card.dart';

class TileListWidget extends StatelessWidget {
  const TileListWidget({
    Key? key,
    required this.title,
    this.numberCard = false,
  }) : super(key: key);

  final String title;
  final bool numberCard;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight(10),
          MainTitle(
            title: title,
          ),
          kHeight(5),
          LimitedBox(
            maxHeight: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                10,
                (index) => numberCard
                    ? TileNumberCard(
                        index: index,
                      )
                    : const MovieTileCard(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
