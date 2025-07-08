import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticketpedia/modules/dashboard/screens/dashboard_screen.dart';
import 'package:ticketpedia/modules/login/screens/login_screen.dart';
import 'package:ticketpedia/modules/plane/screens/plane_screen.dart';
import 'package:ticketpedia/modules/splash/screens/splash_screen.dart';
import 'package:ticketpedia/routes/paths.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
      navigatorKey: navigatorKey,
      initialLocation: Paths.SPLASH.path,
      routes: [
        GoRoute(
          path: Paths.SPLASH.path,
          builder: (context, state) => SplashScreen(),
        ),
        GoRoute(
          path: Paths.LOGIN.path,
          builder: (context, state) => LoginScreen(),
        ),
        GoRoute(
          path: Paths.DASHBOARD.path,
          builder: (context, state) => DashboardScreen(),
        ),
        GoRoute(
          path: Paths.PLANE.path,
          builder: (context, state) => PlaneScreen(),
        )
      ]);
});
