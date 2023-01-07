import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AmountBox extends StatelessWidget {
  final Color color;
  final String img1;
  final String img2;
  final String img3;

  const AmountBox(
      {super.key,
      required this.color,
      required this.img1,
      required this.img2,
      required this.img3});

  @override
  Widget build(BuildContext context) {
    return Container(

  width: 150,
  height: 120,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color:color,
    ),
child: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.center,

children: [

Image(image: AssetImage('assets/images/$img1.png')),

SizedBox(height: 10,),

Image(image: AssetImage('assets/images/$img2.png')),

SizedBox(height: 20,),



Image(image: AssetImage('assets/images/$img3.png')),


  

],



),



    );
  }
}
