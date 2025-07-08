import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticketpedia/modules/dashboard/providers/dashboard_provider.dart';
import 'package:ticketpedia/modules/home/screens/home_screen.dart';
import 'package:ticketpedia/modules/order/screens/order_screen.dart';
import 'package:ticketpedia/modules/profile/screens/profile_screen.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(dashboardChangeNotifierProvider);
    return Scaffold(
      body: IndexedStack(
        index: provider.pageIndex,
        children: [
          HomeScreen(),
          OrderScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Orders"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: provider.pageIndex,
        onTap: (value) => provider.setPageIndex(value),
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
      ),
    );
  }
}
