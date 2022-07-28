import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/icon_button.dart';
import 'package:netflix_app/presentation/widgets/video_widget.dart';

class CommingSoonWidget extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String posterPath;
  final String movieName;
  final String description;

  const CommingSoonWidget({
    Key? key,
    required this.id,
    required this.month,
    required this.day,
    required this.posterPath,
    required this.movieName,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                month,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                  color: kGreyColor,
                ),
              ),
              Text(
                day,
                style: const TextStyle(
                  fontSize: 30,
                  letterSpacing: 4,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(
                imageUrl: posterPath,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      movieName,
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const IconButtonWidget(
                        icon: Icons.notifications,
                        title: "Remind me",
                        textSize: 10,
                        iconSize: 20,
                      ),
                      kWidth(10),
                      const IconButtonWidget(
                        icon: Icons.info,
                        title: "Info",
                        textSize: 10,
                        iconSize: 20,
                      ),
                      kWidth(10),
                    ],
                  )
                ],
              ),
              kHeight(10),
              Text("Comming on $day $month"),
              kHeight(10),
              Text(
                movieName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeight(10),
              Text(
                description,
                maxLines: 7,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: kGreyColor,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
