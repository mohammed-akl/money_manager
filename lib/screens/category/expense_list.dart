import 'package:flutter/material.dart';

class ExpenseListScreen extends StatelessWidget {
  const ExpenseListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(10),
      itemCount: 10,
      separatorBuilder: (context, index){
        return const SizedBox(height: 10);
      },
      itemBuilder: (context, index){
        return Card(
          elevation: 0,
          child: ListTile(
            onTap: (){},
            title: Text('Expense Category $index'),
            subtitle: Text('Travel'),
            trailing: IconButton(
              onPressed: (){},
              icon: Icon(Icons.delete),
            ),
          ),
        );
      },
    );
  }
}
