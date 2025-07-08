import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final profileChangeNotifierProvider =
    ChangeNotifierProvider((ref) => ProfileProvider());

class ProfileProvider extends ChangeNotifier {}
