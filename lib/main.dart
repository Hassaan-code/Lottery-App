
import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
Random random= Random();
  int x =0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: Center(child: Text('Lottery App')),
          backgroundColor: Colors.teal,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('Lottery winning number is 4')),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.3),
                borderRadius: BorderRadius.circular(15)

              ),
              child: Padding(
                padding: const EdgeInsets.all(16),

                child: x==4? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.done_all,color: Colors.green,),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Congratulations! You have won a Lottery.\n  Your number is $x  ',textAlign: TextAlign.center,)

                  ],
                )
                    :Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.error,color: Colors.red,),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Better Luck next time Your number is $x\n try again ',textAlign: TextAlign.center,)

                  ],
                ),
              ),
            )

          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            x=random.nextInt(6);
            print(x);
            setState(() {

            });
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
