import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_payment_app_ui/screens/home.dart';
import 'package:mobile_payment_app_ui/screens/open_page_1.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  login_box() {
    

    return Container(
      height: 600,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/login_box.png'),
        fit: BoxFit.cover,
      )),
    );
  }

  numberInput() {

    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
          prefixText: '+92 ',
          hintText: 'Enter Mobile Number',
          fillColor: Colors.white,
          focusColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }

  verifyButton() {

    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(24, 26, 32, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                login_box(),
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 170),
                  child: Image.asset("assets/images/login_with_phone.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 260, left: 35),
                  child: Image.asset('assets/images/star_box.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 320, left: 130),
                  child: Image.asset('assets/images/phone_pic.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 380, left: 80),
                  child: Image.asset('assets/images/human_pic.png'),
                )
              ],
            ),
            numberInput(),

       GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen())
                  );
                },
         child: Container(
             width: 350,
             height: 55,
             child:  const Padding(
          padding:  EdgeInsets.only(left: 130, top: 7),
          child: Text(
            'Verify',
            style:  TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
          ),
             ),
             decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: const Color(0xff4D5DFA),
             ),
           ),
       )
         
         
          ], ),
      ),
    );
  }
}
