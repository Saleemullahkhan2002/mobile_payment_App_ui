import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SectionBox extends StatelessWidget {
  final Color color;
  final String image;
  final String txt;
  final double height;
  final double width;
  SectionBox(
      {super.key,
      this.width = double.infinity,
      required this.color,
      required this.image,
      required this.txt,
      this.height = 20,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(color: color,
      borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: 
        [
        Image.asset("assets/images/$image",width: 45,height: 50, ),
         Center(child: Text(txt,style: TextStyle(fontSize: 15, color: Colors.white), )),   
         ],
      ),
    );
  }
}
