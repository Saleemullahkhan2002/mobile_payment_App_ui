import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Received extends StatelessWidget {
  const Received({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: Color.fromRGBO(24, 26, 32, 1),
  body: SafeArea(
    
    child: Column(

      children: [
  Padding(
    padding: const EdgeInsets.all(20),
    child: Container(

width: 370,
height: 360,
decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
color: Color(0xff1F222A)
),
child: Padding(
    padding: const EdgeInsets.all(8.0),
    child:   Column(
    
    
    
      children: [
    
            Padding(
              padding: const EdgeInsets.only(right: 35,left: 40),
              child: Row(
    
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
                children: [
    
        
    
          Image( image: AssetImage('assets/images/received_money.png')),
    
        
    
          GestureDetector(
             onTap: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => const Received())
                  );
                },
            child: Image( image: AssetImage('assets/images/cross_bar2.png'))),
    
        
    
        
    
        
    
        
    
        
    
        
    
        
    
        ],),
            ),
    
     SizedBox(height: 10,),
    
     Image(image: AssetImage('assets/images/qr.png'))
    
      ],
    
    ),
),
    ),
  ),
   
   Padding(
     padding: const EdgeInsets.only(left: 20),
     child: Row(children: [
      Image.asset('assets/images/other_opt.png')
     ],),
   ),
      
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 360,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff343645)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
        Image.asset('assets/images/pay_id.png'),
                Image.asset('assets/images/pay_idnum.png'),
        Image.asset('assets/images/pay_idlogo.png'),



            ],),
          )
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 360,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff343645)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
        Image.asset('assets/images/bank.png'),
        Image.asset('assets/images/right_arrow.png'),



            ],),
          )
        ),
      )
    ]),
  ),

    );
  }
}
