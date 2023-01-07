import 'package:flutter/material.dart';
import 'package:mobile_payment_app_ui/screens/login.dart';
import 'package:mobile_payment_app_ui/widgets/section_box.dart';
import 'package:flutter/animation.dart';


class OpenPage extends StatelessWidget {
  const OpenPage({super.key});
  dotsindicator1() {
  return   Container(
      width: 7, 
      height: 7,
      decoration: BoxDecoration(color:
       Colors.white,
       borderRadius: BorderRadius.circular(10) ),
      );
      }
      DotsIndicator2(){
return   Container( 
      width: 7, 
      height: 7,
      decoration: BoxDecoration(color:
       Colors.blue,
       borderRadius: BorderRadius.circular(10) ),
      );
        
      }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(24, 26, 32, 1),
      body: SafeArea(
        child: Column(children: [
          Column(
            children: [
              const SizedBox(
                width: 400,
                height: 300,
              ),
              Container(
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: const Image(
                        width: 80,
                        height: 80,
                        image: AssetImage('assets/images/logo_box.png'),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: const Image(
                        width: 80,
                        height: 80,
                        image: AssetImage('assets/images/logo_box_inside.png'),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              const SizedBox(
                height: 15,
              ),
              Stack(children: [
                GestureDetector(
                 onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen())
                  );
                },
                  
                  child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(77, 93, 250, 1),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.purple,
                              blurRadius: 4,
                              offset: Offset(4, 4), // Shadow position
                            )
                          ])),
                ),

                 Padding(
                  padding: EdgeInsets.all(16),
                  child:
                      GestureDetector(
                      onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen())
                  );
                },    
                        child: Image(image: AssetImage('assets/images/instantpay.png'))),
                )
              ]),
              const SizedBox(
                height: 15,
              ),
              const Image(image: AssetImage('assets/images/payment_text.png')),
             ],),
             SizedBox(height: 10,),
             Row(
              
              children: [
              SizedBox( width: 170,),
              dotsindicator1(),
                           SizedBox(width: 10,),

              DotsIndicator2(),
                           SizedBox(width: 10,),
              DotsIndicator2(),
             SizedBox(width: 10,),

              DotsIndicator2(),
          
          
          
             ],)
        ]),
      ),
    );
  }
}
