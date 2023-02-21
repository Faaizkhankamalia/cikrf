import 'package:cikrf/CARTES%20JAYAANTE/calculator.dart';
import 'package:cikrf/navigation_bar/navigationbar.dart';
import 'package:cikrf/payment_method/Orange%20Money.dart';
import 'package:cikrf/payment_method/visa.dart';
import 'package:flutter/material.dart';
class Wave extends StatefulWidget {
  const Wave({Key? key}) : super(key: key);

  @override
  State<Wave> createState() => _WaveState();
}

class _WaveState extends State<Wave> {
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
                  // onTap: (){
                  //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Wave()));
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
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OrangeMoney()));
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
            SizedBox(height: 80,),
            Container(
              height: 60,
              width: 300,
              child: Material(
                borderRadius: BorderRadius.circular(15),
                elevation: 10.0,
                shadowColor: Colors.yellow,
                child: TextFormField(

                  autofocus: false,
                  decoration: InputDecoration(

                      fillColor: Color(0xFFF4F7FA),
                      filled: true,

                      enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.white, width: 3.0))
                  ),
                ),
              ),
            ),
            SizedBox(height: 160,),
            buttonWidget()
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
