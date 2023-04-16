import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class page3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 153, 177),
      body: SafeArea(child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Lottie.network('https://assets10.lottiefiles.com/packages/lf20_4xuqhu9b.json'),
           Text('Ice Cream',
           style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
           ),)
        ],
          )
      )
      ); 
    
        }
}