import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SquareBox extends StatelessWidget {


  final Color color;
  final String image;
  final String txt;
  final double height;
  final double width;
  const SquareBox({super.key,
  
  this.width = double.infinity,
     required this.color,  
      required this.image,
      required this.txt,
      this.height = 20,
  
     });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
Container(
height: height,
width: width,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(20),
color: color,


),
child:         Center(child: Image.asset("assets/images/$image",width: 25,height: 25, )),


),
SizedBox(height: 6,),
Text('$txt',style: TextStyle(fontSize: 16 , color:Color(0xffAAAAAA)), )

    ],);
  }
}