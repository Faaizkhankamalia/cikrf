import 'package:flutter/material.dart';

class Actualite extends StatefulWidget {
  const Actualite({Key? key}) : super(key: key);

  @override
  State<Actualite> createState() => _ActualiteState();
}

class _ActualiteState extends State<Actualite> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.only(top: 40),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                Text("Actualité",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500),),

              ],),
            ),
            Center(
              child: Text(
                "Time:Laram",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
            Center(
              child: Text(
                "Date: 22/11/2023",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Image.asset("images/1.png"),

            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Column(
                children: [
                  Container(
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey[300],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Expanded(
                              child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing el... Lorem ipsum dolor sit amet, consectetur adipiscing el... Lorem ipsum dolor sit amet, consectetur adipiscing el... ",
                            style: TextStyle(fontSize: 18),
                          )),
                          Row(
                            children: [
                              Icon(Icons.thumb_up_alt_rounded),
                              Spacer(),
                              Icon(Icons.comment),
                              Spacer(),
                              Icon(Icons.share_rounded),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  buttonWidget(),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(25.0)),
                    child: TabBar(
                      indicator: BoxDecoration(
                          color: Color(0xFF105082),
                          borderRadius: BorderRadius.circular(25.0)),
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black,
                      tabs: const [
                        Tab(
                          text: 'Derniéres',
                        ),
                        Tab(
                          text: 'Mosquée',
                        ),
                        Tab(
                          text: 'Culturelles',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: 185,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Lorem ipsum dolor\n sit amet,\n consectetur\n adipiscing el... ",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Icon(Icons.thumb_up_alt_rounded),
                                        SizedBox(
                                          width: 40,
                                        ),
                                        Icon(Icons.comment),
                                        SizedBox(
                                          width: 40,
                                        ),
                                        Icon(Icons.share_rounded),
                                      ],
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                    height: 147,
                                    width: 170,
                                    child: Image.asset(
                                      "images/2.png",
                                    ))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 185,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Lorem ipsum dolor\n sit amet,\n consectetur\n adipiscing el... ",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Icon(Icons.thumb_up_alt_rounded),
                                        SizedBox(
                                          width: 40,
                                        ),
                                        Icon(Icons.comment),
                                        SizedBox(
                                          width: 40,
                                        ),
                                        Icon(Icons.share_rounded),
                                      ],
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                    height: 147,
                                    width: 170,
                                    child: Image.asset(
                                      "images/2.png",
                                    ))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 185,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Lorem ipsum dolor\n sit amet,\n consectetur\n adipiscing el... ",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Icon(Icons.thumb_up_alt_rounded),
                                        SizedBox(
                                          width: 40,
                                        ),
                                        Icon(Icons.comment),
                                        SizedBox(
                                          width: 40,
                                        ),
                                        Icon(Icons.share_rounded),
                                      ],
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                    height: 147,
                                    width: 170,
                                    child: Image.asset(
                                      "images/2.png",
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Text("Status Pages"),
                ),
                Center(
                  child: Text('Calls Page'),
                ),
              ],
            )),
          ],
        ),
      )),
    );
  }

  Widget buttonWidget() {
    return ButtonTheme(
      height: 49,
      minWidth: MediaQuery.of(context).size.width,
      child: MaterialButton(
        color: Colors.orangeAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: () async {
//Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
        },
        child: const Text(
          'Jayaante',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
