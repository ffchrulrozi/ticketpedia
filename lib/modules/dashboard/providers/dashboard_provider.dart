import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dashboardChangeNotifierProvider =
    ChangeNotifierProvider((ref) => DashboardProvider());

class DashboardProvider extends ChangeNotifier {
  int pageIndex = 0;

  setPageIndex(int value){
    pageIndex = value;
    notifyListeners();
  }
}
