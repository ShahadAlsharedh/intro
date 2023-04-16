import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 46, 2),
      body: SafeArea(child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Lottie.network('https://assets1.lottiefiles.com/packages/lf20_1ybf5iqh.json'),
           Text('grab a bite',
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