import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presentation/home/widgets/icon_button.dart';

class HeroSectionWidget extends StatelessWidget {
  const HeroSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/pmAv14TPE2vKMIRrVeCd1Ll7K94.jpg",
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const IconButtonWidget(
                  icon: Icons.add,
                  title: "My List",
                ),
                _PlayAction(),
                const IconButtonWidget(
                  icon: Icons.info,
                  title: "Info",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  TextButton _PlayAction() {
    return TextButton.icon(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kWhiteColor),
      ),
      icon: const Icon(
        Icons.play_arrow,
        size: 30,
        color: kBlackCOlor,
      ),
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          "Play",
          style: TextStyle(
            fontSize: 20,
            color: kBlackCOlor,
          ),
        ),
      ),
    );
  }
}
