import 'package:flutter/material.dart';
import 'package:movie_app/features/home_page/presenation/view/widgets/series_page_body.dart';

class SeriesPage extends StatelessWidget {
  const SeriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(body: SeriesPageBody()),
    );
  }
}
