import 'package:flutter/material.dart';
import 'package:money_manager/screens/category/expense_list.dart';
import 'package:money_manager/screens/category/income_list.dart';

class ScreenCategory extends StatefulWidget {
  const ScreenCategory({Key? key}) : super(key: key);

  @override
  State<ScreenCategory> createState() => _ScreenCategoryState();
}

class _ScreenCategoryState extends State<ScreenCategory>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.black,
          controller: _tabController,
            tabs: [Tab(text: 'INCOME'), Tab(text: 'EXPENSE')]),
        Expanded(
          child: TabBarView(
            controller: _tabController,
              children: [
                IncomeListScreen(),
                ExpenseListScreen()

          ]),
        )
      ],
    );
  }
}
