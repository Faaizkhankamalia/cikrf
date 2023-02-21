import 'package:cikrf/payment_method/Orange%20Money.dart';
import 'package:cikrf/payment_method/visa.dart';
import 'package:cikrf/payment_method/wave.dart';
import 'package:flutter/material.dart';
class Calculate extends StatefulWidget {
  const Calculate({Key? key}) : super(key: key);

  @override
  State<Calculate> createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(

          body: Padding(
            padding: EdgeInsets.only(top: 50,),
            child: Column(
              children: [
              Container(
        height: 54,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFD9D9D9),),
        child: Row(children: [
          Container(
              height: 51,
              child: Image.asset("images/logockirf.png",)),
          Text("Cartes Jayaanté",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500),),

        ],),
      ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(25.0)
                    ),
                    child:  TabBar(
                      indicator: BoxDecoration(
                          color: Color(0xFF105082),
                          borderRadius:  BorderRadius.circular(25.0)
                      ) ,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black,
                      tabs: const  [
                        Tab(text: 'Ponctuel',),
                        Tab(text: "CARTES JAYAANTE",),

                      ],
                    ),
                  ),
                ),
                 Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15,),
                      child: TabBarView(
                        children:  [
                          Column(
                            children: [
                              SizedBox(height: 30,),
                              Container(
                                height: 483,
                                width: 398,
                                decoration: BoxDecoration(
                                    color: Color(0xFF105082),
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child:Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 200,
                                      width: 175,
                                      decoration: BoxDecoration(
                                          color: Color(0xFFF8B816),
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomRight: Radius.circular(420))

                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        height: 95,
                                        width: 257,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(24)
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 15,
                                              width: 15,
                                              decoration: BoxDecoration(
                                                  color:  Color(0xFF105082),
                                                  borderRadius: BorderRadius.circular(10)
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text("Ponctuel",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 49,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(

                                                children: [
                                                  Icon(Icons.monochrome_photos_outlined,color: Colors.grey,),
                                                  SizedBox(width: 30,),
                                                  Text("Montant",style: TextStyle(color: Colors.grey,fontSize: 18),),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Row(
                                            children: [
                                              GestureDetector(
                                                onTap:(){
                                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>OrangeMoney()));
                                                },
                                                child: Container(
                                                  height: 85,
                                                  width: 105,
                                                  decoration: BoxDecoration(color: Colors.white,
                                                    borderRadius: BorderRadius.circular(20),
                                                  ),
                                                  child: Image.asset("images/5.png"),
                                                ),
                                              ),
                                              Spacer(),
                                              GestureDetector(
                                                onTap:(){
                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Visa()));
                                                },
                                                child: Container(
                                                  height: 85,
                                                  width: 105,
                                                  decoration: BoxDecoration(color: Colors.white,
                                                    borderRadius: BorderRadius.circular(20),
                                                  ),
                                                  child: Image.asset("images/6.png"),
                                                ),
                                              ),
                                              Spacer(),
                                              GestureDetector(
                                                onTap:(){
                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Wave()));
                                                },
                                                child: Container(
                                                  height: 85,
                                                  width: 105,
                                                  decoration: BoxDecoration(color: Colors.white,
                                                    borderRadius: BorderRadius.circular(20),
                                                  ),
                                                  child: Image.asset("images/7.png"),
                                                ),
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ) ,
                              ),
                            ],
                          ),
                         Column(
                           children: [
                        Row(
               children: [
                 Container(
height: 190,
                       width: 174,
                       child: Image.asset("images/3.png")),
                 SizedBox(width: 14,),
                 Container(
                       height: 190,
                       width: 174,
                       child: Image.asset("images/4.png")),

               ],
             ),
                             Row(
                               children: [
                                 Container(

                                     width: 174,
                                     child: Image.asset("images/3.png")),
                                 SizedBox(width: 14,),
                                 Container(

                                     width: 174,
                                     child: Image.asset("images/4.png")),

                               ],
                             ),
                             Row(
                               children: [
                                 Container(
                                     height: 190,
                                     width: 174,
                                     child: Image.asset("images/3.png")),
                                 SizedBox(width: 14,),
                                 Container(
                                     height: 190,
                                     width: 174,
                                     child: Image.asset("images/4.png")),

                               ],
                             ),
                           ],
                         ),
                        ],
                      ),
                    )
                )
              ],
            ),
          )
      ),
    );


























//     return Scaffold(
// body: Padding(
//   padding: const EdgeInsets.only(top: 50,),
//   child:   Column(
//
//     children: [
//
//
//       Padding(
//         padding: const EdgeInsets.all(15),
//         child: Column(
//           children: [
//             Container(
//               height: 46,
//               width: double.infinity,
//              decoration: BoxDecoration(
//                color: Color(0xFFD9D9D9) ,
//                borderRadius: BorderRadius.circular(30)
//              ),
//                child: Padding(
//                  padding: const EdgeInsets.only(left: 15,right: 1),
//                  child: Row(
//                   children: [
//                     InkWell(
//                       onTap: (){
//                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Ponctuel()));
//                       },
//                         child: Text("Ponctuel",style: TextStyle(fontSize: 18),)),
//                     Spacer(),
//                     Container(
//                       height: 46,
//                       width: 175,
//                       decoration: BoxDecoration(
//                         color: Colors.blueAccent,
//                         borderRadius: BorderRadius.circular(30)
//                       ),
//                       child: Center(child: Text("CARTES JAYAANTE",style: TextStyle(fontSize: 18),)),
//                     )
//
//
//                   ],
//               ),
//                ),
//             ),
//             SizedBox(height: 20,),
//              Row(
//                children: [
//                  Container(
// height: 190,
//                      width: 174,
//                      child: Image.asset("images/3.png")),
//                  SizedBox(width: 14,),
//                  Container(
//                      height: 190,
//                      width: 174,
//                      child: Image.asset("images/4.png")),
//
//                ],
//              ),
//             Row(
//               children: [
//                 Container(
//
//                     width: 174,
//                     child: Image.asset("images/3.png")),
//                 SizedBox(width: 14,),
//                 Container(
//
//                     width: 174,
//                     child: Image.asset("images/4.png")),
//
//               ],
//             ),
//             Row(
//               children: [
//                 Container(
//                     height:190,
//                     width: 174,
//                     child: Image.asset("images/3.png")),
//                 SizedBox(width: 14,),
//                 Container(
//                     height:190,
//                     width: 174,
//                     child: Image.asset("images/4.png")),
//
//               ],
//             )
//
//           ],
//         ),
//       ),
//
//     ],
//
//   ),
// ),
//     );
  }
}
