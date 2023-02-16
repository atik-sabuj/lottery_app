import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App'),
        ),
        body: SafeArea(
          child: Center(child: Text(x.toString(), style: TextStyle(fontSize: 50),)),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print('tap');
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
