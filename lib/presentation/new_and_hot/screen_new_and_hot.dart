import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflix_app/application/new_and_hot/newandhot_bloc.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/domain/core/api_endpoints.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/comming_soon_widget.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/everyones_watching_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: AppBar(
            title: const Text(
              "New & Hot",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            actions: [
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
            bottom: TabBar(
              indicator: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(30),
              ),
              labelColor: kBlackCOlor,
              labelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelColor: kWhiteColor,
              isScrollable: true,
              tabs: const [
                Tab(
                  text: "🍿 Comming Soon",
                ),
                Tab(
                  text: "👀 Everyone's watching",
                ),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            CommingSoonList(
              key: Key('commingSoon'),
            ),
            EveryOnesWatchingList(
              key: Key('everyonesWatching'),
            ),
          ],
        ),
      ),
    );
  }
}

class CommingSoonList extends StatelessWidget {
  const CommingSoonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((timestamp) {
      BlocProvider.of<NewAndHotBloc>(context)
          .add(const NewandhotEvent.loadDataInComingSoon());
    });

    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<NewAndHotBloc>(context)
            .add(const NewandhotEvent.loadDataInComingSoon());
      },
      child: BlocBuilder<NewAndHotBloc, NewandHotState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            );
          } else if (state.hasError) {
            return const Center(
              child: Text('Error While loading comming soon list'),
            );
          } else if (state.commingSoonList.isEmpty) {
            return const Center(
              child: Text('Comming soon list is empty'),
            );
          } else {
            return ListView.builder(
                itemCount: state.commingSoonList.length,
                itemBuilder: (BuildContext context, index) {
                  final movie = state.commingSoonList[index];

                  if (movie.id == null) {
                    return const SizedBox();
                  }

                  String month = '';
                  String date = '';

                  try {
                    final _date = DateTime.tryParse(movie.releaseDate!);
                    final formatedDate =
                        DateFormat.yMMMMd('en_US').format(_date!);

                    month = formatedDate
                        .split(' ')
                        .first
                        .substring(0, 3)
                        .toUpperCase();

                    date = movie.releaseDate!.split('-')[1];
                  } catch (_) {
                    month = "";
                    date = "";
                  }

                  return CommingSoonWidget(
                      id: movie.id.toString(),
                      month: month,
                      day: date,
                      posterPath: '${ApiEndPoints.imgUrl}${movie.posterPath}',
                      movieName: movie.title ?? 'No Title',
                      description: movie.overview ?? 'No Description');
                });
          }
        },
      ),
    );
  }
}

class EveryOnesWatchingList extends StatelessWidget {
  const EveryOnesWatchingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((timestamp) {
      BlocProvider.of<NewAndHotBloc>(context)
          .add(const NewandhotEvent.loadDataInEveryonesWatching());
    });

    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<NewAndHotBloc>(context)
            .add(const NewandhotEvent.loadDataInEveryonesWatching());
      },
      child: BlocBuilder<NewAndHotBloc, NewandHotState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            );
          } else if (state.hasError) {
            return const Center(
              child: Text('Error While loading comming soon list'),
            );
          } else if (state.eveyOnesWatchingList.isEmpty) {
            return const Center(
              child: Text('Comming soon list is empty'),
            );
          } else {
            return ListView.builder(
                padding: const EdgeInsets.all(20),
                itemCount: state.eveyOnesWatchingList.length,
                itemBuilder: (BuildContext context, index) {
                  final tv = state.eveyOnesWatchingList[index];

                  if (tv.id == null) {
                    return const SizedBox();
                  }
                  log(tv.originalTitle.toString());
                  return EveryonesWatchingWidget(
                      posterPath: '${ApiEndPoints.imgUrl}${tv.posterPath}',
                      movieName: tv.originalName ?? 'No name provided',
                      description: tv.overview ?? 'No description');
                });
          }
        },
      ),
    );
  }
}
