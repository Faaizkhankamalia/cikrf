import 'dart:async';

import 'package:cikrf/auth/login_page.dart';
import 'package:flutter/material.dart';

import '../home_page/home_page.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FutureBuilder(
        //future: checkLoginStatus(),
          builder: (BuildContext context, AsyncSnapshot<bool>
          snapshot){
            if(snapshot.data==false){
              return Home_Page();
            }
            if(snapshot.connectionState==ConnectionState.waiting){
              return Container(
                  color: Colors.white,
                  child: Center(child: CircularProgressIndicator()));
            }
            return Login_Page();
          })));

      // Navigator.push(context, MaterialPageRoute(builder:(context)=>Page1()));
    });
    super.initState();
  }





  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Column(
                    children: [
                      Container(height:200,
                          child: Image.asset("images/logo.png",)),
                      SizedBox(
                        height: 2,
                      ),

                    ],
                  ),
                ),
              )),

        ],
      ),
    );
  }



  String intTo8bitString(int number, {bool prefix = false}) => prefix
      ? '0x${number.toRadixString(2).padLeft(19, '0')}'
      : '${number.toRadixString(2).padLeft(19, '0')}';
}
