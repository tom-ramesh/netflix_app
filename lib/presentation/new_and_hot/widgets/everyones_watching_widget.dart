import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/icon_button.dart';
import 'package:netflix_app/presentation/widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight(10),
        const Text(
          "Friends",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight(10),
        const Text(
          "This hit sitcom follows the merry misadventures of six 20-something pals as they navigate the pitfalls of work,life and love in 1990s Manhattan.",
          style: TextStyle(
            color: kGreyColor,
          ),
        ),
        kHeight(40),
        const VideoWidget(),
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
