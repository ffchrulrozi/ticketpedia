import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticketpedia/assets/assets.gen.dart';
import 'package:ticketpedia/modules/splash/providers/splash_provider.dart';
import 'package:ticketpedia/utils/ext/size_ext.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(splashChangeNotifierProvider);
    return Scaffold(
      body: Image.asset(
        Assets.lib.assets.img.splash.path,
        width: 100.w(context),
        height: 100.h(context),
        fit: BoxFit.cover,
      ),
    );
  }
}
