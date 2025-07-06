import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticketpedia/routes/paths.dart';
import 'package:ticketpedia/routes/routes.dart';

final splashChangeNotifierProvider =
    ChangeNotifierProvider((ref) => HomeProvider());

class HomeProvider with ChangeNotifier {
  HomeProvider() {
    onInit();
  }

  String text = "this is splash";

  void onInit() async {
    Future.delayed(Duration(seconds: 2), () {
      navigatorKey.currentContext?.go(Paths.LOGIN.path);
    });
  }
}
