import 'package:go_router/go_router.dart';
import 'package:movie_app/features/film_details/presentaion/views/film_details.dart';
import 'package:movie_app/features/home_page/presenation/view/full_list_films.dart';
import 'package:movie_app/features/home_page/presenation/view/home_page.dart';
import 'package:movie_app/features/home_page/presenation/view/series_page.dart';

class NamedScreen {
  static const kHomeScreen = "/homeScreen";
  static const kFullListScreen = "/fullListScreen";
  static const kSeriesScreen = "/SeriesScreen";
  static const kFilmDetails = "/filmDetails";
}

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
          path: NamedScreen.kFullListScreen,
          builder: (context, state) => FullListFilms(
                text: state.extra as String,
              )),
      GoRoute(
          path: NamedScreen.kSeriesScreen,
          builder: (context, state) => const SeriesPage()),
      GoRoute(
          path: NamedScreen.kFilmDetails,
          builder: (context, state) => const FilmDetails()),
    ],
  );
}
