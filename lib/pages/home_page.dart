import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
   const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Random random = Random();
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
            SizedBox(height: 20,),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.error,
                      color: Colors.red, size: 35,),
                    SizedBox(height: 15,),
                    Text('Better Luck Next Time Your Number is $x\ntry again',
                      textAlign: TextAlign.center,),
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print('tap');
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
