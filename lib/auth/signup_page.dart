import 'package:cikrf/auth/login_page.dart';
import 'package:flutter/material.dart';
class Signup_Page extends StatefulWidget {
  const Signup_Page({Key? key}) : super(key: key);

  @override
  State<Signup_Page> createState() => _Signup_PageState();
}

class _Signup_PageState extends State<Signup_Page> {
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  TextEditingController cnfrmpassword=TextEditingController();
  TextEditingController user=TextEditingController();
  TextEditingController phone=TextEditingController();

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 83,left: 20,right: 20),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Center(child: Image.asset("images/logo1.png")),
                SizedBox(height: 20,),
                Center(child: Text("S’incrire",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500,fontFamily: 'Montserrat'),)),
                SizedBox(height: 50,),
                Material(
                  borderRadius: BorderRadius.circular(15),
                  elevation: 10.0,
                  shadowColor: Colors.blue,
                  child: TextFormField(
                    controller: user,

                    autofocus: false,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: 'User',
                        fillColor: Color(0xFFF4F7FA),
                        filled: true,

                        enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.white, width: 3.0))
                    ),
                  ),
                ),
                SizedBox(height: 12,),
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
                SizedBox(height: 12,),
                Material(
                  borderRadius: BorderRadius.circular(15),
                  elevation: 10.0,
                  shadowColor: Colors.blue,
                  child: TextFormField(
                    controller: phone,

                    autofocus: false,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        hintText: 'Phone',
                        fillColor: Color(0xFFF4F7FA),
                        filled: true,

                        enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.white, width: 3.0))
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                Material(
                  borderRadius: BorderRadius.circular(15),
                  borderOnForeground: false,
                  elevation: 10.0,
                  shadowColor: Colors.blue,
                  child: TextFormField(
                    controller: password,

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
                SizedBox(height: 12,),
                Material(
                  borderRadius: BorderRadius.circular(15),
                  borderOnForeground: false,
                  elevation: 10.0,
                  shadowColor: Colors.blue,
                  child: TextFormField(
                    controller: cnfrmpassword,

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
                SizedBox(height: 25,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_Page()));
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Déjà inscrit?  ',
                      style: TextStyle(color: Colors.black,fontSize: 18),
                      children: const <TextSpan>[
                        TextSpan(text: 'Se connecter', style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFFF8B816))),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      height: 70,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue,
                      ),
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                          children: [
                            Icon(Icons.facebook,color: Colors.white,size: 33,),
                            Text("signin with facebook",style: TextStyle(color: Colors.white,fontSize: 13),)
                          ],
                      ),
                       ),
                    ),
Spacer(),
                    Container(
                      height: 70,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.redAccent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.g_mobiledata,color: Colors.white,size: 35,),
                            Text("signin with Google",style: TextStyle(color: Colors.white,fontSize: 13),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

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


          }
        },
        child: const Text(
          'Inscrire',
          style: TextStyle(
              color: Colors.white, fontSize: 24),
        ),

      ),

    );

  }
}
