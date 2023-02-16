import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
   const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Random random = Random();
  int x = 0;

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
            Center(child: Text('Lottery Winning Number is 4')),
            SizedBox(height: 20,),
            Container(
              height: x == 4 ? 600 : 250,
              width: 300,
              decoration: BoxDecoration(
                color: x == 4 ? Colors.teal : Colors.grey.withOpacity(.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: x == 4 ?
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.done_all,
                      color: Colors.green, size: 35,),
                    SizedBox(height: 15,),
                    Text('Congratulations You Have Won the Lottery, Your Number is $x', textAlign: TextAlign.center,),
                  ],
                ) :
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.error,
                      color: Colors.red, size: 35,),
                    SizedBox(height: 15,),
                    Text('Better Luck Next Time Your Number is $x\nTry Again',
                      textAlign: TextAlign.center,),
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            x = random.nextInt(6);
            print(x);
            setState(() {});
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
