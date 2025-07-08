import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeChangeNotifierProvider =
    ChangeNotifierProvider((ref) => HomeProvider());

class HomeProvider extends ChangeNotifier {}
