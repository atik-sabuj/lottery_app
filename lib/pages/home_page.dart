import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   int x = 0;

  @override
  Widget build(BuildContext context) {
    print('rebuild');
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
            x++;
            setState(() {

            });
            print(x.toString());
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
