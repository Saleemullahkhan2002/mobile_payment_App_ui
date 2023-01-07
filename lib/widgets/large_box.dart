import 'package:flutter/animation.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class LargeBox extends StatelessWidget {
  final Color color;
  final String logo_img;
  final String img1;
  final String img2;
  final String img3;
  final double height;
  final double width;
  const LargeBox({
    super.key,
    this.width=370,
    this.color=Colors.white,
    this.logo_img='',
    this.img1='',
    this.img2='',
    this.img3='',

    this.height=110,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
// 370,
      height: height,
//  120,

      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(25), color: color),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image(
                width: 80,
                height: 90,
                image: AssetImage('assets/images/$logo_img.png')),
                SizedBox(width: 20,),
            Column(
crossAxisAlignment: CrossAxisAlignment.start,
mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/$img1.png'),
                SizedBox(height: 10,),
                Image.asset('assets/images/$img2.png'),
                SizedBox(height: 10,),
                Image.asset('assets/images/$img3.png'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
