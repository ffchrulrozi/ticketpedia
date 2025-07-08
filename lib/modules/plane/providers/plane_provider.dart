import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final planeChangeNotifierProvider =
    ChangeNotifierProvider((ref) => PlaneProvider());

class PlaneProvider extends ChangeNotifier {}
