import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dashboardChangeNotifierProvider =
    ChangeNotifierProvider((ref) => DashboardProvider());

class DashboardProvider extends ChangeNotifier {}
