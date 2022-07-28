import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/icon_button.dart';
import 'package:netflix_app/presentation/widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  final String posterPath;
  final String movieName;
  final String description;

  const EveryonesWatchingWidget({
    Key? key,
    required this.posterPath,
    required this.movieName,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight(10),
        Text(
          movieName,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight(10),
        Text(
          description,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: kGreyColor,
          ),
        ),
        kHeight(40),
        VideoWidget(
          imageUrl: posterPath,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const IconButtonWidget(
              icon: Icons.share,
              title: "Share",
              iconSize: 30,
              textSize: 12,
            ),
            kWidth(10),
            const IconButtonWidget(
              icon: Icons.add,
              title: "My List",
              iconSize: 30,
              textSize: 12,
            ),
            kWidth(10),
            const IconButtonWidget(
              icon: Icons.play_arrow,
              title: "Play",
              iconSize: 30,
              textSize: 12,
            ),
            kWidth(10),
          ],
        ),
      ],
    );
  }
}
