import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
   const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int x = 8;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lottery App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('Lottery Winning Number is $x')),
            Text(x > 5 ? 'x is grater than 5' : x.toString()),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print('tap');
          },
          child: Icon(x > 5 ? Icons.place : Icons.refresh),
        ),
      ),
    );
  }
}
