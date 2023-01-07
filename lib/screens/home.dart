import 'package:flutter/material.dart';
import 'package:mobile_payment_app_ui/screens/notification.dart';
import 'package:mobile_payment_app_ui/screens/profile.dart';
import 'package:mobile_payment_app_ui/screens/recived.dart';
import 'package:mobile_payment_app_ui/widgets/amount_box.dart';
import 'package:mobile_payment_app_ui/widgets/large_box.dart';
import 'package:mobile_payment_app_ui/widgets/section_box.dart';
import 'package:mobile_payment_app_ui/widgets/square_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromRGBO(24, 26, 32, 1),
          appBar: AppBar(
              backgroundColor: Color.fromRGBO(24, 26, 32, 1),
              leading: GestureDetector(
                  onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Profile())
                  );
                },
                
                child: Image.asset("assets/images/profile.png")),
              title: Container(
                width: 210,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff343645)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text("Search Uer's Id ",style: TextStyle(color: Color(0xffB0BEC5CC)), ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.search ,color: Color(0xffB0BEC5CC ))
                    ],
                  ),
                ),
              ),
              bottom: const TabBar(
                tabs: [
                  Tab(child: Text('Home')),
                  Tab(
                    child: Text('Balance'),
                  ),
                  Tab(
                    child: Text('Offers'),
                  ),
                  Tab(
                    child: Text('Reward'),
                  ),
                ],
              ),
              actions: [
                GestureDetector(      

                  onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Notificationpg())
                  );
                },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      width: 45,
                      height: 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xff343645)),
                      child: Icon(Icons.notifications_none_rounded,color: Color(0xffB0BEC5CC), ),
                    ),
                  ),
                )
              ]),
          body: TabBarView(children: [
//   home

            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 10, left: 10, top: 5, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Money Transfer',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Container(
                            width: 40,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Color(0xff343645),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              children: [
                                Image.asset("assets/images/more_pic.png"),
                                Image.asset('assets/images/more_arror.png')
                              ],
                            ))
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SectionBox(
                        width: 180,
                        height: 45,
                        color: Color(0xff5B2E62),
                        image: 'scan_img.png',
                        txt: 'Scan QR Code',
                      ),
                      SectionBox(
                        width: 180,
                        height: 45,
                        color: Color(0xff2E624C),
                        image: 'add_contact.png',
                        txt: 'Send To Contact',
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SectionBox(
                        width: 180,
                        height: 45,
                        color: Color(0xff5E622E),
                        image: 'Send_bank.png',
                        txt: 'Send To Bank',
                      ),
                      SectionBox(
                        width: 180,
                        height: 45,
                        color: Color(0xff622E3A),
                        image: 'self_transfer.png',
                        txt: 'Self Transfer',
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recharge and Bill Payment',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Container(
                            width: 40,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Color(0xff343645),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              children: [
                                Image.asset("assets/images/more_pic.png"),
                                Image.asset('assets/images/more_arror.png')
                              ],
                            ))
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SectionBox(
                        width: 180,
                        height: 45,
                        color: Color(0xff32652A),
                        image: 'mobile.png',
                        txt: 'Mobile Recharge',
                      ),
                      SectionBox(
                        width: 180,
                        height: 45,
                        color: Color(0xff652A5F),
                        image: 'electricity.png',
                        txt: 'Electricity Bill',
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SectionBox(
                        width: 180,
                        height: 45,
                        color: Color(0xff652A2A),
                        image: 'dlh_recharge.png',
                        txt: 'DTH Recharge ',
                      ),
                      SectionBox(
                        width: 180,
                        height: 45,
                        color: Color(0xff2A4065),
                        image: 'pospaid_bill.png',
                        txt: 'Postpaid Bill',
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text(
                          'Ticket Booking',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SquareBox(
                          color: Color(0xff242042),
                          image: 'movies_pic.png',
                          txt: 'Movies',
                          height: 50,
                          width: 50,
                        ),
                        SquareBox(
                          color: Color(0xff242042),
                          image: 'train.png',
                          txt: 'Train',
                          height: 50,
                          width: 50,
                        ),
                        SquareBox(
                          color: Color(0xff242042),
                          image: 'bus.png',
                          txt: 'Bus',
                          height: 50,
                          width: 50,
                        ),
                        SquareBox(
                          color: Color(0xff242042),
                          image: 'flights.png',
                          txt: 'Flight',
                          height: 50,
                          width: 50,
                        ),
                        SquareBox(
                          color: Color(0xff242042),
                          image: 'car.png',
                          txt: 'Car',
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text('More Services',
                            style: TextStyle(color: Colors.white, fontSize: 20))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        SquareBox(
                          color: Color(0xff242042),
                          image: 'movies_pic.png',
                          txt: 'Invest',
                          height: 50,
                          width: 50,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SquareBox(
                          color: Color(0xff242042),
                          image: 'movies_pic.png',
                          txt: 'Loan',
                          height: 50,
                          width: 50,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SquareBox(
                          color: Color(0xff242042),
                          image: 'movies_pic.png',
                          txt: 'Insurance',
                          height: 50,
                          width: 50,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SquareBox(
                          color: Color(0xff242042),
                          image: 'movies_pic.png',
                          txt: 'Fastage',
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Money Transfer',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                              width: 90,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Color(0xff08348A),
                                  borderRadius: BorderRadius.circular(5)),
                              child: GestureDetector(

                                  onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Received())
                  );
                },
                                child: Image.asset(
                                    'assets/images/received_money.png'),
                              )),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Image.asset('assets/images/rt1.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset('assets/images/rt2.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset('assets/images/rt3.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset('assets/images/rt4.png'),
                        SizedBox(width: 10),
                        Image.asset('assets/images/rt5.png'),
                      ],
                    ),
                  )
                ],
              ),
            ),

//     Balance screen

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    width: 350,
                    height: 460,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff1F222A)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image(
                                  width: 30,
                                  height: 30,
                                  image: AssetImage(
                                      'assets/images/circular_arrow.png')),
                              Column(
                                children: [
                                  Image.asset(
                                      'assets/images/portfolio_value.png'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Image.asset('assets/images/amount.png'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Image.asset('assets/images/in_3_account.png')
                                ],
                              ),
                              Image(
                                  width: 40,
                                  height: 40,
                                  image: AssetImage(
                                      'assets/images/variation.png')),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            AmountBox(
                                color: Color(0xff652A5F),
                                img1: 'federal_bank',
                                img2: 'imei_num',
                                img3: 'amount_value'),
                            AmountBox(
                                color: Color(0xff442A65),
                                img1: 'state_bank',
                                img2: 'imei_num2',
                                img3: 'amount_value2'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              AmountBox(
                                  color: Color(0xff2A6550),
                                  img1: 'best_bank',
                                  img2: 'imei_num3',
                                  img3: 'amount_value3'),
                              SizedBox(
                                width: 100,
                              ),
                              Image.asset('assets/images/arrow.png')
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 290,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              color: Color(0xff343645)),
                          child: Image.asset('assets/images/manage_acc.png'),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),

//    offers page

            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                LargeBox(
                  color: Color(0xff242042),
                  logo_img: 'box1_logo',
                  img1: 'box1_1',
                  img2: 'box1_2',
                  img3: 'box1_3',
                ),
                SizedBox(
                  height: 10,
                ),
                LargeBox(
                  color: Color(0xff242042),
                  logo_img: 'b2_logo',
                  img1: 'b2_1',
                  img2: 'b2_2',
                  img3: 'b2_3',
                ),
                SizedBox(
                  height: 10,
                ),
                LargeBox(
                  color: Color(0xff242042),
                  logo_img: 'b3_logo',
                  img1: 'b3_1',
                  img2: 'box1_2',
                  img3: 'b3_2',
                ),
                SizedBox(
                  height: 10,
                ),
                LargeBox(
                  color: Color(0xff242042),
                  logo_img: 'b4_logo',
                  img1: 'b4_1',
                  img2: 'box1_2',
                  img3: 'b4_2',
                ),
                SizedBox(
                  height: 10,
                ),
                LargeBox(
                  color: Color(0xff242042),
                  logo_img: 'b5_logo',
                  img1: 'b5_1',
                  img2: 'b5_2',
                  img3: 'b5_3',
                ),
              ],
            ),

//   reward page
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 360,
                    height: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff1F222A),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Image.asset('assets/images/cashback.png'),
                          Image.asset('assets/images/amount507.png'),
                          Image.asset('assets/images/cashback.png'),
                          Container(
                            width: 290,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                color: Color(0xff343645)),
                            child:
                                Image.asset('assets/images/view_cashback.png'),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                        ]),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 8),
                      child: Image.asset('assets/images/scartched.png'),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image(
                          width: 120,
                          height: 120,
                          image: AssetImage('assets/images/empty_loading.png')),
                          SizedBox(width: 8,),
 emptyBox(),
 SizedBox(width: 15,),
 emptyBox(),
                    ],),),
              
             Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 15, top: 8),
                   child: Image(image:AssetImage('assets/images/collect_reward.png')),
                 ),
               ],
             ) ,
             
  Padding(
   padding:const  EdgeInsets.all(8.0),
   child:  Column(
     children: [
     LargeBox(
                        color: Color(0xff242042),
                        logo_img: 'b6_logo',
                        img1: 'b6_1',
                        img2: 'b6_2',
                        img3: 'b6_3',
                      ),
                       SizedBox(height: 10,),
                LargeBox(
                    color: Color(0xff422038),
                    logo_img: 'b7_box',
                    img1: 'b7_1',
                    img2: 'b7_2',
                    img3: 'b7_3',
                  ),
     ],
   ),
 ),
               
                

              
              ], )
          ]),
        ),
      ),
    );
  }
}

emptyBox() {
  return Container(
    width: 115,
    height: 115,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Color(0xff242042),
    ),
  );
}
