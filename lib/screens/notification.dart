import 'package:flutter/material.dart';

class Notificationpg extends StatelessWidget {
  const Notificationpg ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(24, 26, 32, 1),
body: SafeArea(
  child:   Column(
  
children: [
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Container(
  
  
  
    width: 370,
  
    height: 370,
  
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
  
    color: Color(0xff1F222A)
  
    ),
    child: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(children: [

Row(children: [

  Image(image: AssetImage('assets/images/notifications.png')),
    SizedBox(width: 205,),

  GestureDetector(
     onTap: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => const Notificationpg())
                  );
                },
    child: Image(image: AssetImage('assets/images/cross_bar2.png'))),
],),
SizedBox(height: 25,),

// data1
Column(
  children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
      
            children: [
      
              Image(image: AssetImage('assets/images/recharge_comp.png')),
      
            ],
      
          ),
      SizedBox(height: 10,),

          Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
      
              Image(image: AssetImage('assets/images/recharge_text.png')),
      
                    Image(image: AssetImage('assets/images/recharge_noti.png')),

            ],
      
          ),
      
          Row(
      
            children: [
      
              Image(image: AssetImage('assets/images/recharge_date.png')),
      
            ],
      
          ),
      
  ],
),
// data 2
SizedBox(height: 20,),
Column(
  children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
      
            children: [
      
              Image(image: AssetImage('assets/images/money_received.png')),
      
            ],
      
          ),
            SizedBox(height: 10,),

          Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
      
              Image(image: AssetImage('assets/images/moneyrec_data.png')),
      
                    Image(image: AssetImage('assets/images/recharge_noti.png')),

            ],
      
          ),
      
          Row(
      
            children: [
      
              Image(image: AssetImage('assets/images/moneyrec_date.png')),
      
            ],
      
          ),
      
  ],
),
// data3

SizedBox(height: 20,),

Column(
  children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
      
            children: [
      
              Image(image: AssetImage('assets/images/offer_unlock.png')),
      
            ],
      
          ),
                SizedBox(height: 10,),

      
          Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
      
              Image(image: AssetImage('assets/images/offer_data.png')),
      
                    Image(image: AssetImage('assets/images/recharge_noti.png')),

            ],
      
          ),
      
          Row(
      
            children: [
      
              Image(image: AssetImage('assets/images/offer_date.png')),
      
            ],
      
          ),
      
  ],
),
SizedBox(height: 20,),
Row(
  children: [

  Image(image: AssetImage('assets/images/recent_noti.png')),
  SizedBox(width: 150,),
  Image(image: AssetImage('assets/images/arrow_down.png')),
],),

      ],),
    ),
  
  ),
)
],

  
  
  
  
    
  
  ),
),
    );
  }
}
