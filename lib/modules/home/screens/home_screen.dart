import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticketpedia/modules/home/screens/widgets/feature_widget.dart';
import 'package:ticketpedia/modules/home/screens/widgets/last_search_widget.dart';
import 'package:ticketpedia/modules/home/screens/widgets/promo_widget.dart';
import 'package:ticketpedia/modules/home/screens/widgets/search_widget.dart';
import 'package:ticketpedia/utils/helper/divider_helper.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SearchWidget(),
          FeatureWidget(),
          v(1),
          LastSearchWidget(),
          v(2),
          PromoWidget()
        ],
      ),
    );
  }
}
