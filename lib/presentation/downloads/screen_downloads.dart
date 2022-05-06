import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/downloads/widgets/downloads_image_widget.dart';
import 'package:netflix_app/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({Key? key}) : super(key: key);

  final _widgetList = [
    const _SmartDownloads(),
    _Section2(),
    const _Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: "Downloads",
        ),
      ),
      body: ListView.separated(
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) => _widgetList[index],
          separatorBuilder: (context, index) => kHeight(25),
          itemCount: _widgetList.length),
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.settings,
          color: kWhiteColor,
        ),
        kWidth(20),
        const Text(
          "Smart Downloads",
        ),
      ],
    );
  }
}

class _Section2 extends StatelessWidget {
  _Section2({Key? key}) : super(key: key);

  final List imageList = [
    "https://www.themoviedb.org/t/p/w220_and_h330_face/tlZpSxYuBRoVJBOpUrPdQe9FmFq.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/74xTEgt7R36Fpooo50r9T25onhq.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/wFjboE0aFZNbVOF05fzrka9Fqyx.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        const Text(
          "Introducing downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kWhiteColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight(10),
        const Text(
          "We willdownload a personalised selection of\nmovies ans shows for you, so ther's\nalways something to watch on your\ndevice",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: size.width * 0.4,
                  backgroundColor: Colors.grey.withOpacity(0.5),
                ),
              ),
              DownloadsImageWidget(
                imageList: imageList[0],
                margin: const EdgeInsets.only(
                  left: 155,
                  top: 35,
                ),
                angle: 30,
                size: Size(
                  size.width * 0.45,
                  size.width * 0.5,
                ),
              ),
              DownloadsImageWidget(
                imageList: imageList[1],
                margin: const EdgeInsets.only(
                  right: 155,
                  top: 35,
                ),
                angle: -30,
                size: Size(
                  size.width * 0.45,
                  size.width * 0.5,
                ),
              ),
              DownloadsImageWidget(
                imageList: imageList[2],
                margin: const EdgeInsets.only(
                  top: 35,
                ),
                size: Size(
                  size.width * 0.45,
                  size.width * 0.65,
                ),
                radius: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _Section3 extends StatelessWidget {
  const _Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          color: kButtonColorBlue,
          minWidth: double.infinity,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Text(
              "Set up",
              style: TextStyle(
                color: kWhiteColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        kHeight(15),
        MaterialButton(
          color: kButtonColorWhite,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Text(
              "See what you can download",
              style: TextStyle(
                color: kBlackCOlor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
