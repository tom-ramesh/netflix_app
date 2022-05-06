import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';

class TileNumberCard extends StatelessWidget {
  const TileNumberCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              height: 250,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              width: 130,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: kRadius(10),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/keGfSvCmYj7CvdRx36OdVrAEibE.jpg",
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 12,
          bottom: -30,
          child: BorderedText(
            strokeWidth: 4.0,
            strokeColor: kWhiteColor,
            child: Text(
              "${index + 1}",
              style: const TextStyle(
                fontSize: 140,
                fontWeight: FontWeight.bold,
                color: kBlackCOlor,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        )
      ],
    );
  }
}
