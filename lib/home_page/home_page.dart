import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.only(top: 60,left: 20,right: 20),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("images/1.png"),
SizedBox(height: 10,),
              buttonWidget(),
              SizedBox(height: 10,),
              Container(
                height: 216,
                width: double.infinity,
                decoration: BoxDecoration(
                  color:  Color(0xFFDADADA),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Bilan",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
                      Row(
                        children: [
                          Text("Montant prévisionnel",style: TextStyle(fontSize: 18),),
                          Spacer(),
                          Text("4M €",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Montant actuel",style: TextStyle(fontSize: 18),),
                          Spacer(),
                          Text("500K €",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      SizedBox(height: 40,),
                      StepProgressIndicator(
                        totalSteps: 100,
                        currentStep: 32,
                        size: 19,
                        padding: 0,
                        selectedColor: Colors.yellow,
                        unselectedColor: Colors.cyan,
                        roundedEdges: Radius.circular(10),
                        selectedGradientColor: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.orangeAccent, Colors.orangeAccent],
                        ),
                        unselectedGradientColor: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFF7C7C7C), Color(0xFF7C7C7C),],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text("Actualités",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24),),
              SizedBox(height: 20,),
              Container(
                height: 280,
                width: double.infinity,
                decoration: BoxDecoration(
                  color:  Color(0xFFDADADA),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("images/1.png"),
                     Padding(
                       padding: const EdgeInsets.all(15),
                       child: Text("Lorem ipsum dolor sit amet,\n consectetur adipiscing el... ",style: TextStyle(fontSize: 18),),

                     ),

                  ],
                ),
              ),
              SizedBox(height: 20,),
               Center(child: Text("Voir plus",style: TextStyle(fontSize: 18,color: Colors.blue),)),
              SizedBox(height: 30,),
            ],
        ),
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
        onPressed: () async {

        },
        child: const Text(
          'Jayaante',
          style: TextStyle(
              color: Colors.white, fontSize: 24),
        ),

      ),

    );

  }
}
