import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/search/search_bloc.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/domain/core/api_endpoints.dart';
import 'package:netflix_app/presentation/search/widgets/title.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: "Movies & TV"),
        kHeight(10),
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 1 / 1.4,
                children: List.generate(
                  20,
                  (index) {
                    final movie = state.searchResultList[index];
                    return MainCard(
                      imageUrl: movie.posterPath,
                    );
                  },
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final String? imageUrl;
  const MainCard({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage('${ApiEndPoints.imgUrl}$imageUrl'),
        ),
      ),
    );
  }
}
