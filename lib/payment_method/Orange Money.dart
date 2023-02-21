import 'package:cikrf/CARTES%20JAYAANTE/calculator.dart';
import 'package:cikrf/payment_method/visa.dart';
import 'package:cikrf/payment_method/wave.dart';
import 'package:flutter/material.dart';

import '../navigation_bar/navigationbar.dart';
class OrangeMoney extends StatefulWidget {
  const OrangeMoney({Key? key}) : super(key: key);

  @override
  State<OrangeMoney> createState() => _OrangeMoneyState();
}

class _OrangeMoneyState extends State<OrangeMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:Padding(
         padding: const EdgeInsets.only(top: 50,left: 15,right: 15),
         child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
                    },
                    child: Icon(Icons.arrow_back,size: 30,)),
                SizedBox(width: 20,),
                Text("Ajouter des informations de paiement ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
              ],
            ),
SizedBox(height: 40,),
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Visa()));
                  },
                  child: Card(
                    elevation: 4,
                    child: Container(
                      height: 70,
                      width: 110,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("images/visa.png"),
                            SizedBox(height: 10,),
                            Text("Carte",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
Spacer(),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Wave()));
                  },
                  child: Card(
                    elevation: 4,
                    child: Container(
                      height: 70,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("images/wave.png"),
                            SizedBox(height: 10,),
                            Text("Wave",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  // onTap: (){
                  //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Visa()));
                  // },
                  child: Card(
                    elevation: 4,
                    child: Container(
                      height: 70,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("images/orange.png"),
                            SizedBox(height: 10,),
                            Text("Orange Money",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(top: 60,left: 20,right: 20),
              child: Row(
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(15),
                    elevation: 10.0,
                    shadowColor: Colors.yellow,
                    child: Container(
                      height: 60,
                      width: 60,
                      child: TextFormField(
                        autofocus: false,
                        decoration: InputDecoration(
                            fillColor: Color(0xFFF4F7FA),
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 3, color: Colors.white),
                            ),

                            enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.white, width: 3.0))
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Material(
                    borderRadius: BorderRadius.circular(15),
                    elevation: 10.0,
                    shadowColor: Colors.yellow,
                    child: Container(
                      height: 60,
                      width: 60,
                      child: TextFormField(
                        autofocus: false,
                        decoration: InputDecoration(
                            fillColor: Color(0xFFF4F7FA),
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 3, color: Colors.white),
                            ),

                            enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.white, width: 3.0))
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Material(
                    borderRadius: BorderRadius.circular(15),
                    elevation: 10.0,
                    shadowColor: Colors.yellow,
                    child: Container(
                      height: 60,
                      width: 60,
                      child: TextFormField(
                        autofocus: false,
                        decoration: InputDecoration(
                            fillColor: Color(0xFFF4F7FA),
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 3, color: Colors.white),
                            ),

                            enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.white, width: 3.0))
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Material(
                    borderRadius: BorderRadius.circular(15),
                    elevation: 10.0,
                    shadowColor: Colors.yellow,
                    child: Container(
                      height: 60,
                      width: 60,
                      child: TextFormField(
                        autofocus: false,
                        decoration: InputDecoration(
                            fillColor: Color(0xFFF4F7FA),
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 3, color: Colors.white),
                            ),

                            enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.white, width: 3.0))
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 150,),
            buttonWidget(),
          ],
      ),
       ) ,
    );
  }
  Widget buttonWidget() {
    return ButtonTheme(
      height: 49,
      minWidth: MediaQuery.of(context).size.width,
      child: MaterialButton(
        color:  Color(0xFFF105082),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: () async {

           // Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));

        },
        child: const Text(
          'Valider',
          style: TextStyle(
              color: Colors.white, fontSize: 24),
        ),

      ),

    );

  }
}
