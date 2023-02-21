import 'package:cikrf/CARTES%20JAYAANTE/calculator.dart';
import 'package:cikrf/payment_method/Orange%20Money.dart';
import 'package:cikrf/payment_method/wave.dart';
import 'package:flutter/material.dart';

import '../navigation_bar/navigationbar.dart';
class Visa extends StatefulWidget {
  const Visa({Key? key}) : super(key: key);

  @override
  State<Visa> createState() => _VisaState();
}

class _VisaState extends State<Visa> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Padding(
  padding: const EdgeInsets.only(top: 50,left: 15,right: 15),
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
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
      SizedBox(height: 20,),
      RichText(
        text: const TextSpan(
          text: 'Informations concernant la carte bancaire ',
          style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w600),
          children: <TextSpan>[
            TextSpan(text: 'Scanner la carte', style: TextStyle(fontSize:13,fontWeight: FontWeight.w600,color: Color(0xFFF8B816))),

          ],
        ),
      ),
      SizedBox(height: 20,),
      Container(
        height: 170,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white,
        borderRadius: BorderRadius.circular(15)
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Numéro de carte bancaire ",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset("images/visa.png"),
                  Image.asset("images/visa.png"),
                  Image.asset("images/visa.png"),
                ],
              ),
              Divider(
                height: 14,
                color: Colors.black,
              ),
              Row(
                children: [
                  Container(
                    height:80,
                    width: 160,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "MM/AA",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.white), //<-- SEE HERE
                        ),
                      ),
                    ),
                  ),
                  Divider(

                  ),
                  Container(
                    height:80,
                    width: 160,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Cvc",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.white), //<-- SEE HERE
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 14,
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: 20,),
      Text("Adresse de facturation",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 13),),
      SizedBox(height: 20,),
      Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Numéro de carte bancaire ",style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w600),),
            Row(
              children: [
                Text("France",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w600)),
                Spacer(),
                Image.asset("images/11.png",color: Colors.black,)
              ],
            ),


            ],
          ),
        ),
      ),
      SizedBox(height: 10,),
      Row(
        children: [
          Checkbox(
            checkColor: Colors.white,
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          Text("Enregistrez les informations",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 13),)
          //
        ],
      ),
      SizedBox(height: 20,),
      Text("Combien de coupures souhaitez\n vous régler votre paiement?",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700),),
      SizedBox(height: 20,),
      buttonWidget()
    ],
  ),
),
    );
  }
  Widget buttonWidget() {
    return ButtonTheme(
      height: 49,
      minWidth: MediaQuery.of(context).size.width,
      child: MaterialButton(
        color:  Color(0xFFF105082),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: ()  {

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
