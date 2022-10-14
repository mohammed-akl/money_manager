import 'package:flutter/material.dart';
import 'package:money_manager/screens/category/screen_category.dart';
import 'package:money_manager/screens/home/widgets/bottom_navigation.dart';
import 'package:money_manager/screens/transactions/screen_transaction.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  static ValueNotifier<int> selectedIndex = ValueNotifier(0);

  final _pages = const [
    ScreenTransactions(),
    ScreenCategory()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: BottomNavigation(),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: selectedIndex,
          builder: (BuildContext context, int updatedIndex, _){
            return _pages[updatedIndex];
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: selectedIndex.value==0 ? 'Add new Transaction' : 'Add new Category',
        child: Icon(
          Icons.add
        ),
      ),
    );
  }
}
