import 'package:cikrf/auth/signup_page.dart';
import 'package:cikrf/home_page/home_page.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../navigation_bar/navigationbar.dart';
class Login_Page extends StatefulWidget {
  const Login_Page({Key? key}) : super(key: key);

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Padding(
      padding: const EdgeInsets.only(top: 143,left: 20,right: 20),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Container(
                height: 70,
                  child: Image.asset("images/logo1.png")),
              SizedBox(height: 20,),
               Center(child: Text("Se connecter",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500,fontFamily: 'Montserrat'),)),
              SizedBox(height: 50,),
              Material(
                borderRadius: BorderRadius.circular(15),
                elevation: 10.0,
                shadowColor: Colors.blue,
                child: TextFormField(
                  controller: email,

                  autofocus: false,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      hintText: 'Email',
                      fillColor: Color(0xFFF4F7FA),
                      filled: true,

                      enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.white, width: 3.0))
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Material(
                borderRadius: BorderRadius.circular(15),
                borderOnForeground: false,
                elevation: 10.0,
                shadowColor: Colors.blue,
                child: TextFormField(
                  controller: password,
                  obscureText: true,
                  autofocus: false,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline),
                      suffixIcon:Icon(Icons.remove_red_eye),
                      hintText: 'Password',
                      fillColor: Color(0xFFF4F7FA),
                      filled: true,

                      enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.white, width: 3.0))
                  ),
                ),
              ),
              SizedBox(height: 34,),
              buttonWidget(),
              SizedBox(height: 34,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup_Page()));
                },
                child: RichText(
                  text: const TextSpan(
                    text: 'Pas de compte? ',
                    style: TextStyle(color: Colors.black,fontSize: 18),
                    children: <TextSpan>[
                       TextSpan(text: 'S’inscrire.', style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFFF8B816))),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text("Mot de passes oublie.", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Color(0xFFF8B816)))
              
            ],
          ),
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
          if (formKey.currentState!.validate()) {

       Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
          }
        },
        child: const Text(
          'Connecter',
          style: TextStyle(
              color: Colors.white, fontSize: 24),
        ),

      ),

    );

  }
}
