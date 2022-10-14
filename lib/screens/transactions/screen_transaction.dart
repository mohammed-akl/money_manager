import 'package:flutter/material.dart';

class ScreenTransactions extends StatelessWidget {
  const ScreenTransactions({Key? key}) : super(key: key);

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
            leading: CircleAvatar(
              radius: 50,
                child: Text(
                    '12\nDec',
                    textAlign: TextAlign.center)
            ),
            title: Text('1000'),
            subtitle: Text('Travel'),
          ),
        );
      },
    );
  }
}
