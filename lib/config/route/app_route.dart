import 'package:flutter/material.dart';
import 'package:lwha/config/route/routes.dart';
import 'package:lwha/main.dart';


/// Manages and organizes the routes in the application.
class AppRoutes {
  /// A function that generates the appropriate route based on the requested route name.
  static Route? onGenerateRoute(RouteSettings route) {
    // Check the requested route name.
    switch (route.name) {
      case Routes.MainScreen:
        // If the route is MainScreen, create the route using the _createRoute function.
        return _createRoute(child: HomePage());
      default:
        // If the requested route is not defined, return a route that shows a "not found" screen.
        return notFoundRoute();
    }
  }
  /// A private function that creates a route using a slide transition.
  static Route _createRoute({required Widget child}) {
    return PageRouteBuilder(

      pageBuilder: (context, animation, secondaryAnimation) => child,

      // Build the transition effect between screens.
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // The slide starts from the bottom (0.0, 1.0) and goes to the top of the screen (Offset.zero).
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        // Create the slide animation using Tween and apply a curve to it.
        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        // Return the final slide transition effect.
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  /// A function that creates a default screen when the requested route is not found.
  static Route<dynamic> notFoundRoute() {
    return MaterialPageRoute(
      // Build a screen that displays "Not found screen" message.
      builder: (context) => const Scaffold(
        body: Center(
          child: Text(
            "Not found screen",
            style: TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.w500,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}



