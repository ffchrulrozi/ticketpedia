import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final orderChangeNotifierProvider =
    ChangeNotifierProvider((ref) => OrderProvider());

class OrderProvider extends ChangeNotifier {}
