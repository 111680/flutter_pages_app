import 'package:flutter/material.dart';

import 'pages/about_page.dart';
import 'pages/contact_page.dart';
import 'pages/home_page.dart';

/// Central place for route names and the page transition animation.
class AppRoutes {
  static const String home = '/';
  static const String about = '/about';
  static const String contact = '/contact';

  /// Order matches the BottomNavigationBar items.
  static const List<String> tabs = [home, about, contact];

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final Widget page;
    switch (settings.name) {
      case about:
        page = const AboutPage();
        break;
      case contact:
        page = const ContactPage();
        break;
      case home:
      default:
        page = const HomePage();
    }

    return PageRouteBuilder(
      settings: settings,
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final slide = Tween<Offset>(
          begin: const Offset(0.08, 0),
          end: Offset.zero,
        ).animate(CurvedAnimation(parent: animation, curve: Curves.easeOut));
        return FadeTransition(
          opacity: animation,
          child: SlideTransition(position: slide, child: child),
        );
      },
    );
  }
}
