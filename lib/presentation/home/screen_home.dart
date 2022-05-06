import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/header_widget.dart';
import 'package:netflix_app/presentation/home/widgets/hero_section.dart';
import 'package:netflix_app/presentation/widgets/tile_list_widget.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (BuildContext context, index, _) {
        //to detect scroll direction
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                children: const [
                  HeroSectionWidget(),
                  TileListWidget(
                    title: "Released in the past year",
                  ),
                  TileListWidget(
                    title: "Trending Now",
                  ),
                  TileListWidget(
                    title: "Top 10 TV Shows In India Today",
                    numberCard: true,
                  ),
                  TileListWidget(
                    title: "Tense Dramas",
                  ),
                  TileListWidget(
                    title: "South Indian Cinema",
                  ),
                ],
              ),
              scrollNotifier.value == true ? const HeaderWidget() : kHeight(10),
            ],
          ),
        );
      },
    ));
  }
}
