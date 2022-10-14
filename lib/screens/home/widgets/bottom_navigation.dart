import 'package:flutter/material.dart';
import 'package:money_manager/screens/home/screen_home.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ScreenHome.selectedIndex,
      builder: (BuildContext ctx, int updatedIndex, Widget? _) {
        return BottomNavigationBar(
          currentIndex: updatedIndex,
          onTap: (newIndex) {
            ScreenHome.selectedIndex.value = newIndex;
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Transactions'),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: 'Categories'),
          ],
        );
      },
    );
  }
}
