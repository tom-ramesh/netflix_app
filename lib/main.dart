import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/application/bloc/home_bloc.dart';
import 'package:netflix_app/application/downloads/downloads_bloc.dart';
import 'package:netflix_app/application/new_and_hot/newandhot_bloc.dart';
import 'package:netflix_app/domain/core/di/injectable.dart';
import 'package:netflix_app/presentation/main_page/screen_main_page.dart';
import 'package:netflix_app/core/colors/colors.dart';

import 'application/search/search_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<DownloadsBloc>()),
        BlocProvider(create: (context) => getIt<SearchBloc>()),
        BlocProvider(create: (context) => getIt<NewAndHotBloc>()),
        BlocProvider(create: (context) => getIt<HomeBloc>())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
          ),
          primarySwatch: Colors.blue,
          backgroundColor: backgroundColor,
          scaffoldBackgroundColor: backgroundColor,
          fontFamily: GoogleFonts.montserrat().fontFamily,
          textTheme: const TextTheme(
            bodyText1: TextStyle(
              color: Colors.white,
            ),
            bodyText2: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        home: ScreenMainPage(),
      ),
    );
  }
}
