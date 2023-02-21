import 'package:cikrf/auth/login_page.dart';
import 'package:cikrf/bilan.dart';
import 'package:cikrf/historique/historique.dart';
import 'package:flutter/material.dart';
class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Padding(
  padding: const EdgeInsets.only(top: 50),
  child:   Column(
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
          SizedBox(width: 20,),
          Text("Paramètres",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500),),



        ],),
      ),
    SizedBox(height: 10,),
      ListTile(
        leading: Icon(Icons.person,color: Colors.black,),
        title: Text("Profil",style: TextStyle(fontSize: 18,color: Colors.black),),
      ),
      Divider(
        color: Colors.black,
        height: 30,
      ),
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Historique()));
        },
        child: ListTile(
          leading: Icon(Icons.history_edu,color: Colors.black,),
          title: Text("Historique",style: TextStyle(fontSize: 18,color: Colors.black)),
        ),
      ),
      Divider(
        color: Colors.black,
        height: 30,
      ),
      ListTile(
        leading: Icon(Icons.construction,color: Colors.black,),
        title: Text("Projet",style: TextStyle(fontSize: 18,color: Colors.black)),
      ),
      Divider(
        color: Colors.black,
        height: 30,
      ),
      ListTile(
        leading: Icon(Icons.article,color: Colors.black,),
        title: Text("Actualités",style: TextStyle(fontSize: 18,color: Colors.black)),
      ),
      Divider(
        color: Colors.black,
        height: 30,
      ),
      ListTile(
        leading: Icon(Icons.phonelink_rounded,color: Colors.black,),
        title: Text("Nous ",style: TextStyle(fontSize: 18,color: Colors.black)),
      ),
      Divider(
        color: Colors.black,
        height: 30,
      ),
      ListTile(
        leading: Icon(Icons.sim_card_alert_rounded,color: Colors.black,),
        title: Text("A Propos  ",style: TextStyle(fontSize: 18,color: Colors.black)),
      ),
      Divider(
        color: Colors.black,
        height: 30,
      ),
      GestureDetector(
        onTap: (){
       Navigator.push(context, MaterialPageRoute(builder: (context)=>Bilan()));
        },
        child: ListTile(
          leading: Icon(Icons.graphic_eq,color: Colors.black,),
          title: Text("Bilan  ",style: TextStyle(fontSize: 18,color: Colors.black)),
        ),
      ),
      Divider(
        color: Colors.black,
        height: 30,
      ),
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_Page()));
        },
        child: ListTile(
          leading: Icon(Icons.exit_to_app,color: Colors.black,),
          title: Text("Déconnexion ",style: TextStyle(fontSize: 18,color: Colors.black)),
        ),
      ),
      Divider(
        color: Colors.black,
        height: 30,
      ),
    ],
  ),
),
    );
  }

}
