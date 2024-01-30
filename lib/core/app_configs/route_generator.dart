import 'package:book_my_movie/src/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'screen_names.dart';

class RouteGenerator {
  RouteGenerator._();

  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case ScreenNames.homePage:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
    }
  }
}
