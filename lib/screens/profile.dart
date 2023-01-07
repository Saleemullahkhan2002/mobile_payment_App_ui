import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Color.fromRGBO(24, 26, 32, 1),
body: 
SafeArea(child: 
Column(children: [
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Container(
  
    width: 370,
  
    height: 250,
  
    decoration: BoxDecoration(borderRadius:BorderRadius.circular(25),
  
    color: Color(0xff1F222A)
  
     ),
  
  
  
     child: Padding(
  
       padding: const EdgeInsets.all(15),
  
       child: Column(children: [
  
  Row(
  
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
    children: [
  
  Image( image: AssetImage('assets/images/profile2.png')),
  
  Image( image: AssetImage('assets/images/elsa.png')),
  SizedBox(width: 70,),
  GestureDetector(
     onTap: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => const Profile())
                  );
                },
    child: Image( image: AssetImage('assets/images/cross_bar2.png'))),
   ],),
  SizedBox(height: 10,),
  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
  Column(
    children: [
      Image( image: AssetImage('assets/images/transaction.png')),
            SizedBox(height: 5,),

        Image( image: AssetImage('assets/images/transactions.png')),

    ],
  ),

  Column(
    children: [
      Image( image: AssetImage('assets/images/points.png')),
      SizedBox(height: 5,),
        Image( image: AssetImage('assets/images/points_value.png')),

    ],
  ),
  Column(
    children: [
      Image( image: AssetImage('assets/images/rank.png')),
            SizedBox(height: 5,),

        Image( image: AssetImage('assets/images/rank_value.png')),

    ],
  ),
      Image( image: AssetImage('assets/images/explore.png')),

  ],),
  
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Image(
        width: 110,
        height: 110,
        image: AssetImage('assets/images/edit_pro.png')),
         Image(
        width: 110,
        height: 110,
        image: AssetImage('assets/images/setting.png')),
         Image(
        width: 110,
        height: 110,
        image: AssetImage('assets/images/share.png')),
        

    
  ],)
  
       ],),
  
     ),
  
  ),
),


Container(
 width: 370,
  
    height: 200,
  
    decoration: BoxDecoration(borderRadius:BorderRadius.circular(25),
  
    color: Color(0xff1F222A)
  
     ),
     child: Padding(
       padding: const EdgeInsets.all(15),
       child: Column(children: [

Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
        Image( image: AssetImage('assets/images/all_translogo.png')),
        Image( image: AssetImage('assets/images/all_trans.png')),
        Image( image: AssetImage('assets/images/arrow_right.png')),


],),
SizedBox(height: 10,),

Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
        Image( image: AssetImage('assets/images/pending_translogo.png')),
        Image( image: AssetImage('assets/images/pending_trans.png')),
        Image( image: AssetImage('assets/images/arrow_right.png')),


],),
SizedBox(height: 10,),


Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
        Image( image: AssetImage('assets/images/refundlogo.png')),
        Image( image: AssetImage('assets/images/refund.png')),
        Image( image: AssetImage('assets/images/arrow_right.png')),


],),
SizedBox(height: 10,),

Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
        Image( image: AssetImage('assets/images/issuelogo2.png')),
        Image( image: AssetImage('assets/images/issue.png')),
        Image( image: AssetImage('assets/images/arrow_right.png')),


],),
SizedBox(height: 10,),

Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
        Image( image: AssetImage('assets/images/helplogo.png')),
        Image( image: AssetImage('assets/images/help.png')),
        Image( image: AssetImage('assets/images/arrow_right.png')),


],)








       ]),
     ),

),
SizedBox(height: 10,),

Container(

  width: 370,
  
    height: 140,
  
    decoration: BoxDecoration(borderRadius:BorderRadius.circular(25),
  
    color: Color(0xff1F222A)
  
     ),
child: Padding(
  padding: const EdgeInsets.all(15),
  child:   Column(children: [
  
  
  
    Row(
  
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
      children: [
  
          Image( image: AssetImage('assets/images/pending_translogo.png')),
  
          Image( image: AssetImage('assets/images/aboutus.png')),
  
          Image( image: AssetImage('assets/images/arrow_right.png')),
  
  
  
  
  
  
  
    ],),
SizedBox(height: 10,),

     Row(
  
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
      children: [
  
          Image( image: AssetImage('assets/images/refundlogo.png')),
  
          Image( image: AssetImage('assets/images/terms.png')),
  
          Image( image: AssetImage('assets/images/arrow_right.png')),
  
  
  
  
  
  
  
    ],),
    SizedBox(height: 10,),

   Row(
  
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
      children: [
  
          Image( image: AssetImage('assets/images/issuelogo2.png')),
  
          Image( image: AssetImage('assets/images/feedback.png')),
  
          Image( image: AssetImage('assets/images/arrow_right.png')),
  
  
  
  
  
  
  
    ],),
  
  
  
  ],),
),
)


])),
    );
  }
}
