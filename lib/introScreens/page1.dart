import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Lottie.network('https://assets5.lottiefiles.com/packages/lf20_xiussssy.json'),
           Text('Prepare  for takeoff',
           style: TextStyle(
            fontSize: 30,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
           ),)
        ],
          )
      )
      ); 
    

        }
}