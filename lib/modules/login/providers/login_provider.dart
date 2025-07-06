import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticketpedia/routes/paths.dart';
import 'package:ticketpedia/routes/routes.dart';

final loginChangeNotifierProvider = ChangeNotifierProvider((ref)=>LoginProvider());

class LoginProvider with ChangeNotifier{
  void login(){
    navigatorKey.currentContext?.go(Paths.DASHBOARD.path);
  }
}