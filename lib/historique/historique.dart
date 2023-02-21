import 'package:flutter/material.dart';

import 'package:pie_chart/pie_chart.dart';

import '../bar_chart_model.dart';
import 'package:charts_flutter/flutter.dart' as charts;
class Historique extends StatefulWidget {
  const Historique({Key? key}) : super(key: key);
  @override
  State<Historique> createState() => _HistoriqueState();
}
class _HistoriqueState extends State<Historique> {


  Map<String, double> dataMap = {
    "Flutter": 7,
    "React": 4,
  };
  final colorList = <Color>[
    Color(0xFF105082),
    Color(0xFFF8B816),
  ];
  final List<BarChartModel> data = [
    BarChartModel(
      month: "feb",
      financial: 250,
      color: charts.ColorUtil.fromDartColor(Colors.blueAccent),
    ),
    BarChartModel(
      month: "",
      financial: 300,
      color: charts.ColorUtil.fromDartColor(Colors.orangeAccent),
    ),
    BarChartModel(
      month: "april",
      financial: 100,
      color: charts.ColorUtil.fromDartColor(Colors.blueAccent),
    ),
    BarChartModel(
      month: "",
      financial: 450,
      color: charts.ColorUtil.fromDartColor(Colors.orangeAccent),
    ),
    BarChartModel(
      month: "jun",
      financial: 630,
      color: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    BarChartModel(
      month: "",
      financial: 950,
      color: charts.ColorUtil.fromDartColor(Colors.orangeAccent),
    ),

  ];


  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
        id: "financial",
        data: data,
        domainFn: (BarChartModel series, _) => series.month,
        measureFn: (BarChartModel series, _) => series.financial,
        colorFn: (BarChartModel series, _) => series.color,
      ),
    ];
    return DefaultTabController(
      length: 2,
      child: Scaffold(

          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  height: 54,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),),
                  child: Row(children: [
                    Container(
                        height: 51,
                        child: Image.asset("images/logockirf.png",)),
                    SizedBox(width: 30,),
                    Text("Historique",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500),),

                  ],),
                ),
              ),

             Padding(
               padding: const EdgeInsets.only(top: 20,right: 15,left: 15),
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
                     Tab(text: 'Récents',),
                     Tab(text: 'Mes chiffres',),
                   ],
                 ),
               ),
             ),
              Expanded(
                 child: TabBarView(
                   children:  [
                   Padding(
                     padding: const EdgeInsets.all(15),
                     child: SingleChildScrollView(
                       child: Column(
                         children: [
                           Container(
                             height: 80,
                             width: 396,

                             decoration: BoxDecoration(
                               color: Colors.red,
                               borderRadius: BorderRadius.circular(30),
                             ),
                             child: Column(

                               children: [

                                 Container(
                                   height: 80,
                                   width: 396,
                                   decoration: BoxDecoration(
                                       color: Color(0xFFF5F5F5),

                                     borderRadius: BorderRadius.circular(59)
                                   ),
                                   child: Padding(
                                     padding: const EdgeInsets.all(15),
                                     child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Row(
                                           children: [
                                             Text("21/12/2022",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                             SizedBox(width: 20,),
Column(
  children: [
    Row(
      children: [

        Text("ckrf_12334",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
        SizedBox(width: 90,),
               Text("50 €",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.red),),

      ],
    ),
    Row(
      children: [

        Text("14h:55",style: TextStyle(fontSize: 18),),
        SizedBox(width: 50,),
        Text("Carte bancaire",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
      ],
    ),
  ],
),
                                           ],
                                         ),

                                       ],
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           SizedBox(height: 20,),
                           Container(
                             height: 80,
                             width: 396,

                             decoration: BoxDecoration(
                               color: Colors.green,
                               borderRadius: BorderRadius.circular(30),
                             ),
                             child: Column(

                               children: [

                                 Container(
                                   height: 80,
                                   width: 396,
                                   decoration: BoxDecoration(
                                       color: Color(0xFFF5F5F5),

                                       borderRadius: BorderRadius.circular(59)
                                   ),
                                   child: Padding(
                                     padding: const EdgeInsets.all(15),
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Row(
                                           children: [
                                             Text("21/12/2022",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                             SizedBox(width: 20,),
                                             Column(
                                               children: [
                                                 Row(
                                                   children: [

                                                     Text("ckrf_12334",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                                     SizedBox(width: 90,),
                                                     Text("50 €",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.green),),

                                                   ],
                                                 ),
                                                 Row(
                                                   children: [

                                                     Text("14h:55",style: TextStyle(fontSize: 18),),
                                                     SizedBox(width: 50,),
                                                     Text("Carte bancaire",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                                   ],
                                                 ),
                                               ],
                                             ),
                                           ],
                                         ),

                                       ],
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           SizedBox(height: 20,),
                           Container(
                             height: 80,
                             width: 396,

                             decoration: BoxDecoration(
                               color: Colors.green,
                               borderRadius: BorderRadius.circular(30),
                             ),
                             child: Column(

                               children: [

                                 Container(
                                   height: 80,
                                   width: 396,
                                   decoration: BoxDecoration(
                                       color: Color(0xFFF5F5F5),

                                       borderRadius: BorderRadius.circular(59)
                                   ),
                                   child: Padding(
                                     padding: const EdgeInsets.all(15),
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Row(
                                           children: [
                                             Text("21/12/2022",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                             SizedBox(width: 20,),
                                             Column(
                                               children: [
                                                 Row(
                                                   children: [

                                                     Text("ckrf_12334",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                                     SizedBox(width: 90,),
                                                     Text("50 €",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.green),),

                                                   ],
                                                 ),
                                                 Row(
                                                   children: [

                                                     Text("14h:55",style: TextStyle(fontSize: 18),),
                                                     SizedBox(width: 50,),
                                                     Text("Carte bancaire",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                                   ],
                                                 ),
                                               ],
                                             ),
                                           ],
                                         ),

                                       ],
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           SizedBox(height: 20,),
                           Container(
                             height: 80,
                             width: 396,

                             decoration: BoxDecoration(
                               color: Colors.green,
                               borderRadius: BorderRadius.circular(30),
                             ),
                             child: Column(

                               children: [

                                 Container(
                                   height: 80,
                                   width: 396,
                                   decoration: BoxDecoration(
                                       color: Color(0xFFF5F5F5),

                                       borderRadius: BorderRadius.circular(59)
                                   ),
                                   child: Padding(
                                     padding: const EdgeInsets.all(15),
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Row(
                                           children: [
                                             Text("21/12/2022",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                             SizedBox(width: 20,),
                                             Column(
                                               children: [
                                                 Row(
                                                   children: [

                                                     Text("ckrf_12334",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                                     SizedBox(width: 90,),
                                                     Text("50 €",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.green),),

                                                   ],
                                                 ),
                                                 Row(
                                                   children: [

                                                     Text("14h:55",style: TextStyle(fontSize: 18),),
                                                     SizedBox(width: 50,),
                                                     Text("Carte bancaire",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                                   ],
                                                 ),
                                               ],
                                             ),
                                           ],
                                         ),

                                       ],
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           SizedBox(height: 20,),
                           Container(
                             height: 80,
                             width: 396,

                             decoration: BoxDecoration(
                               color: Colors.red,
                               borderRadius: BorderRadius.circular(30),
                             ),
                             child: Column(

                               children: [

                                 Container(
                                   height: 80,
                                   width: 396,
                                   decoration: BoxDecoration(
                                       color: Color(0xFFF5F5F5),

                                       borderRadius: BorderRadius.circular(59)
                                   ),
                                   child: Padding(
                                     padding: const EdgeInsets.all(15),
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Row(
                                           children: [
                                             Text("21/12/2022",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                             SizedBox(width: 20,),
                                             Column(
                                               children: [
                                                 Row(
                                                   children: [

                                                     Text("ckrf_12334",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                                     SizedBox(width: 90,),
                                                     Text("50 €",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.red),),

                                                   ],
                                                 ),
                                                 Row(
                                                   children: [

                                                     Text("14h:55",style: TextStyle(fontSize: 18),),
                                                     SizedBox(width: 50,),
                                                     Text("Carte bancaire",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                                   ],
                                                 ),
                                               ],
                                             ),
                                           ],
                                         ),

                                       ],
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           SizedBox(height: 20,),
                           Container(
                             height: 80,
                             width: 396,

                             decoration: BoxDecoration(
                               color: Colors.green,
                               borderRadius: BorderRadius.circular(30),
                             ),
                             child: Column(

                               children: [

                                 Container(
                                   height: 80,
                                   width: 396,
                                   decoration: BoxDecoration(
                                       color: Color(0xFFF5F5F5),

                                       borderRadius: BorderRadius.circular(59)
                                   ),
                                   child: Padding(
                                     padding: const EdgeInsets.all(15),
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Row(
                                           children: [
                                             Text("21/12/2022",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                             SizedBox(width: 20,),
                                             Column(
                                               children: [
                                                 Row(
                                                   children: [

                                                     Text("ckrf_12334",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                                     SizedBox(width: 90,),
                                                     Text("50 €",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.green),),

                                                   ],
                                                 ),
                                                 Row(
                                                   children: [

                                                     Text("14h:55",style: TextStyle(fontSize: 18),),
                                                     SizedBox(width: 50,),
                                                     Text("Carte bancaire",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                                   ],
                                                 ),
                                               ],
                                             ),
                                           ],
                                         ),

                                       ],
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           SizedBox(height: 20,),
                           Container(
                             height: 80,
                             width: 396,

                             decoration: BoxDecoration(
                               color: Colors.green,
                               borderRadius: BorderRadius.circular(30),
                             ),
                             child: Column(

                               children: [

                                 Container(
                                   height: 80,
                                   width: 396,
                                   decoration: BoxDecoration(
                                       color: Color(0xFFF5F5F5),

                                       borderRadius: BorderRadius.circular(59)
                                   ),
                                   child: Padding(
                                     padding: const EdgeInsets.all(15),
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Row(
                                           children: [
                                             Text("21/12/2022",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                             SizedBox(width: 20,),
                                             Column(
                                               children: [
                                                 Row(
                                                   children: [

                                                     Text("ckrf_12334",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                                     SizedBox(width: 90,),
                                                     Text("50 €",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.green),),

                                                   ],
                                                 ),
                                                 Row(
                                                   children: [

                                                     Text("14h:55",style: TextStyle(fontSize: 18),),
                                                     SizedBox(width: 50,),
                                                     Text("Carte bancaire",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                                   ],
                                                 ),
                                               ],
                                             ),
                                           ],
                                         ),

                                       ],
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           SizedBox(height: 20,),
                           Container(
                             height: 80,
                             width: 396,

                             decoration: BoxDecoration(
                               color: Colors.green,
                               borderRadius: BorderRadius.circular(30),
                             ),
                             child: Column(

                               children: [

                                 Container(
                                   height: 80,
                                   width: 396,
                                   decoration: BoxDecoration(
                                       color: Color(0xFFF5F5F5),

                                       borderRadius: BorderRadius.circular(59)
                                   ),
                                   child: Padding(
                                     padding: const EdgeInsets.all(15),
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Row(
                                           children: [
                                             Text("21/12/2022",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                             SizedBox(width: 20,),
                                             Column(
                                               children: [
                                                 Row(
                                                   children: [

                                                     Text("ckrf_12334",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                                     SizedBox(width: 90,),
                                                     Text("50 €",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.green),),

                                                   ],
                                                 ),
                                                 Row(
                                                   children: [

                                                     Text("14h:55",style: TextStyle(fontSize: 18),),
                                                     SizedBox(width: 50,),
                                                     Text("Carte bancaire",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                                   ],
                                                 ),
                                               ],
                                             ),
                                           ],
                                         ),

                                       ],
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           SizedBox(height: 20,),
                         ],
                       ),
                     ),
                   ),
                     Padding(
                       padding: const EdgeInsets.all(10),
                       child: Column(
                         children: [
                           Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Column(
                                 children: [
                                   Container(
                                     height: 218,
                                     width: 200,
                                     decoration: BoxDecoration(
                                       color: Color(0xFFF5F5F5),
                                        borderRadius: BorderRadius.circular(30)
                                     ),
                                     child:PieChart(
                                       dataMap: dataMap,

                                       animationDuration: Duration(milliseconds: 800),
                                       chartLegendSpacing: 32,
                                       chartRadius: MediaQuery.of(context).size.width / 2.2,
                                       initialAngleInDegree: 0,
                                       chartType: ChartType.disc,

                                       ringStrokeWidth: 32,
                                       colorList: colorList,

                                       legendOptions: LegendOptions(
                                         showLegendsInRow: false,
                                         legendPosition: LegendPosition.right,
                                         showLegends: false,
                                         legendShape: BoxShape.circle,
                                         legendTextStyle: TextStyle(
                                           fontWeight: FontWeight.bold,
                                         ),
                                       ),
                                       chartValuesOptions: ChartValuesOptions(
                                         showChartValueBackground: false,
                                         showChartValues: false,
                                         showChartValuesInPercentage: false,
                                         showChartValuesOutside: false,
                                         decimalPlaces: 1,
                                       ),
                                       // gradientList: ---To add gradient colors---
                                       // emptyColorGradient: ---Empty Color gradient---
                                     )
                                   ),
                                   SizedBox(height: 10,),
                                   Container(
                                     height: 260,
                                     width: 200,
                                     child: charts.BarChart(
                                       series,
                                       animate: true,
                                     ),
                                   ),
                                   SizedBox(height: 10,),
                                   Container(
                                     height: 132,
                                     width: 200,
                                     decoration: BoxDecoration(
                                         color: Color(0xFFF5F5F5),
                                         borderRadius: BorderRadius.circular(30)
                                     ),
                                     child: Padding(
                                       padding: const EdgeInsets.all(10),
                                       child: Column(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         children: [
                                           Row(

                                             children: [
                                               Container(
                                                 height: 12,
                                                 width: 12,
                                                 color:Color(0xFF105082),

                                               ),
                                               SizedBox(width: 20,),
                                               Text("Nbre de cotisations ",style: TextStyle(fontSize: 18),)
                                             ],
                                           ),
                                           SizedBox(height: 20,),
                                           Row(

                                             children: [
                                               Container(
                                                 height: 12,
                                                 width: 12,
                                                 color:Color(0xFFF8B816),

                                               ),
                                               SizedBox(width: 20,),
                                               Text("Montant cotisé ",style: TextStyle(fontSize: 18),)
                                             ],
                                           ),
                                         ],
                                       ),
                                     ),
                                   ),
                                 ],
                               ),
                               SizedBox(width: 10,),
                               Column(
                                 children: [
                                   Container(
                                     height: 130,
                                     width: 150,
                                     decoration: BoxDecoration(
                                         color: Color(0xFFF5F5F5),
                                         borderRadius: BorderRadius.circular(30)
                                     ),
                                     child: Padding(
                                       padding: const EdgeInsets.all(10),
                                       child: Column(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         children: [
                                           Row(

                                             children: [
                                               Container(
                                                 height: 12,
                                                 width: 12,
                                                 color:Color(0xFF105082),

                                               ),
                                               SizedBox(width: 20,),
                                               Text("Cotisations",style: TextStyle(fontSize: 18),)
                                             ],
                                           ),
                                           SizedBox(height: 20,),
                                           Row(

                                             children: [
                                               Container(
                                                 height: 12,
                                                 width: 12,
                                                 color:Color(0xFFF8B816),

                                               ),
                                               SizedBox(width: 20,),
                                               Text("Restants",style: TextStyle(fontSize: 18),)
                                             ],
                                           ),
                                         ],
                                       ),
                                     ),
                                   ),
                                   SizedBox(height: 10,),
                                   Container(
                                     height:265 ,
                                     width: 160,
                                     decoration: BoxDecoration(
                                         color: Color(0xFFF5F5F5),
                                         borderRadius: BorderRadius.circular(30)
                                     ),
                                     child:Column(
                                       children: [
                                         Container(
                                           width: 150,
                                           height: 64,
                                           decoration: BoxDecoration(
                                             color:  Color(0xFFF8B816),
                                               borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                                           ),
                                           
                                           child: Column(
                                             mainAxisAlignment: MainAxisAlignment.center,
                                             children: [
                                               Text("Carte ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                               Text("JAYAANTE",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                             ],
                                           ),
                                         ),
                                          Padding(
                                            padding: const EdgeInsets.all(15),
                                            child: Column(
                                              children: [
                                                Text("Montant visé",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                                                SizedBox(height: 20,),
                                                Text("500 €",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.blue),),
                                                SizedBox(height: 20,),
                                                Text("Montant restant",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                                                SizedBox(height: 20,),
                                                Text("300 €",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.red),),
                                              ],
                                            ),
                                          ),
                                       

                                       ],
                                     )
                                   ),
                                                                    SizedBox(height: 10,),
                                                                    Container(
                                                                      width: 150,
                                                                      height: 222,
                                                                      decoration: BoxDecoration(
                                                                          color: Color(0xFFF5F5F5),
                                                                          borderRadius: BorderRadius.circular(30),
                                                                      ),
                                                                       child: Padding(
                                                                         padding: const EdgeInsets.all(10),
                                                                         child: Column(
                                                                          children: [
                                                                            Text("Montant total de\n mes cotisations",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                                                            SizedBox(height: 15,),
                                                                            Text("200 €",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700,color: Colors.green),),
                                                                            SizedBox(height: 15,),
                                                                            Text("Nombre de cotisations",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500), textAlign: TextAlign.center),
                                                                            SizedBox(height: 15,),
                                                                            Text("5",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700),),
                                                                          ],
                                                                      ),
                                                                       ),
                                                                    ),
                                 ],
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),

                   ],
                 )
             )
            ],
          )
      ),
    );
  }
}
