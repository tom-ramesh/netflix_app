import 'package:flutter/material.dart';

import '../../core/constants.dart';

class MovieTileCard extends StatelessWidget {
  const MovieTileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 130,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: kRadius(10),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/keGfSvCmYj7CvdRx36OdVrAEibE.jpg"),
        ),
      ),
    );
  }
}
