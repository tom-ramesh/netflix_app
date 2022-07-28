import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/search/search_bloc.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/domain/core/api_endpoints.dart';
import 'package:netflix_app/presentation/search/widgets/title.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: "Top Searches"),
        kHeight(10),
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text(
                    "Error while getting data",
                  ),
                );
              } else if (state.idleList.isEmpty) {
                return const Center(
                  child: Text(
                    "List is empty",
                  ),
                );
              }
              return ListView.separated(
                shrinkWrap: true,
                itemBuilder: (contex, index) {
                  final movie = state.idleList[index];
                  return TopSearchItemTile(
                    title: movie.title ?? 'No title provded',
                    imagePath: movie.posterPath ?? '',
                  );
                },
                separatorBuilder: (contex, index) => kHeight(20),
                itemCount: state.idleList.length,
              );
            },
          ),
        ),
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  final String title;
  final String imagePath;

  const TopSearchItemTile({
    Key? key,
    required this.title,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 65,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage('${ApiEndPoints.imgUrl}$imagePath'),
            ),
          ),
        ),
        kWidth(10),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              color: kWhiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        const CircleAvatar(
          backgroundColor: kWhiteColor,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: kBlackCOlor,
            radius: 23,
            child: Icon(
              CupertinoIcons.play_fill,
              color: kWhiteColor,
            ),
          ),
        )
      ],
    );
  }
}
