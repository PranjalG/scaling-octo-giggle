import 'package:dash_app/screens/about_page.dart';
import 'package:dash_app/screens/blog_page.dart';
import 'package:dash_app/screens/contact_page.dart';
import 'package:dash_app/screens/error404.dart';
import 'package:dash_app/screens/home_page.dart';
import 'package:dash_app/screens/landing_page.dart';
import 'package:dash_app/screens/layouts_page.dart';
import 'package:dash_app/screens/list_viewer.dart';
import 'package:dash_app/screens/payments.dart';
import 'package:dash_app/screens/settings_screen.dart';
import 'package:dash_app/screens/tiles.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case 'Home page':
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
          settings: RouteSettings(arguments: routeSettings.arguments),
        );
      case 'Layouts page':
        return MaterialPageRoute(
          builder: (_) => const LayoutsPage(),
          settings: RouteSettings(arguments: routeSettings.arguments),
        );
      case 'Landing page':
        return MaterialPageRoute(
          builder: (_) => const LandingPage(),
          settings: RouteSettings(arguments: routeSettings.arguments),
        );
      case 'Tiles page':
        return MaterialPageRoute(
          builder: (_) => const Tiles(),
          settings: RouteSettings(arguments: routeSettings.arguments),
        );
      case 'Contact page':
        return MaterialPageRoute(
          builder: (_) => const ContactPage(),
          settings: RouteSettings(arguments: routeSettings.arguments),
        );
      case 'About page':
        return MaterialPageRoute(
          builder: (_) => const AboutPage(),
          settings: RouteSettings(arguments: routeSettings.arguments),
        );
      case 'Blog page':
        return MaterialPageRoute(
          builder: (_) => const BlogPage(),
          settings: RouteSettings(arguments: routeSettings.arguments),
        );
      case 'List Viewer page':
        return MaterialPageRoute(
          builder: (_) => ListViewer(),
          settings: RouteSettings(arguments: routeSettings.arguments),
        );
      case 'Error page':
        return MaterialPageRoute(
          builder: (_) => const Error404(),
          settings: RouteSettings(arguments: routeSettings.arguments),
        );
      case 'Settings page':
        return MaterialPageRoute(
          builder: (_) => const SettingsScreen(),
          settings: RouteSettings(arguments: routeSettings.arguments),
        );
      case 'MultiThreading page':
        return MaterialPageRoute(
          builder: (_) => const SettingsScreen(),
          settings: RouteSettings(arguments: routeSettings.arguments),
        );
      case 'Payments page':
        return MaterialPageRoute(
          builder: (_) => const PaymentsPage(),
          settings: RouteSettings(arguments: routeSettings.arguments),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Error404(),
        );
    }
  }
}
