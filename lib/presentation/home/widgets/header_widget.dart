import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 1000),
      color: Colors.black.withOpacity(0.3),
      height: 90,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Image.network(
                "https://cdn.vox-cdn.com/thumbor/Yq1Vd39jCBGpTUKHUhEx5FfxvmM=/39x0:3111x2048/1200x800/filters:focal(39x0:3111x2048)/cdn.vox-cdn.com/uploads/chorus_image/image/49901753/netflixlogo.0.0.png",
                width: 70,
                height: 70,
              ),
              const Spacer(),
              const Icon(
                Icons.cast,
                color: kWhiteColor,
                size: 30,
              ),
              kWidth(10),
              Container(
                width: 30,
                height: 30,
                color: Colors.blue,
              ),
              kWidth(10),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("TV Shows", style: kTextStyle14),
              Text("Movies", style: kTextStyle14),
              Text("Categories", style: kTextStyle14),
            ],
          )
        ],
      ),
    );
  }
}
