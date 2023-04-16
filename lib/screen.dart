import 'package:flutter/material.dart';
import 'package:intro/Homepage.dart';
import 'package:intro/introScreens/page1.dart';
import 'package:intro/introScreens/page2.dart';
import 'package:intro/introScreens/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

 class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen( {Key? key}) : super(key:key);
  @override 
  _OnBoardScreenState createState() => _OnBoardScreenState();
  

  }

class _OnBoardScreenState extends State<OnBoardScreen> {

  // ignore: prefer_final_fields
  PageController _controller = PageController();
    bool lastpage = false;

  @override
  Widget build(BuildContext){
    return Scaffold(
      body:Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index){
              setState(() {
                lastpage = (index == 2);
              });
            },
            children: [
             page1(),
             page2(),
             page3(),
            ],
          ),

         Container(
          alignment: Alignment(0, 0.75),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              //skip 
              GestureDetector(
                onTap: (){
                  _controller.jumpToPage(2);
                },
                child: Text('Skip',
                style: TextStyle(
                  color: Colors.white,
                )),
              ),

              //Dots
          SmoothPageIndicator(controller: _controller , count: 3,) ,

          //Next
          lastpage ?
           GestureDetector(
                onTap: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context){
                  return HomePage();
                }));
                },
                child: Text('Done',
                style: TextStyle(
                  color: Colors.white,)
              ) )
              : GestureDetector(
                onTap: (){
                  _controller.nextPage(
                    duration: Duration(microseconds: 500),
                   curve: Curves.easeIn,);
                },
                child: Text('Next',
                style: TextStyle(
                  color: Colors.white,)
              )) 
            ],
         )
         ),
        ],
      )
    );
    
  }
  
}
