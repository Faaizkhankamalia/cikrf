import 'package:cikrf/bar_chart_model.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:step_progress_indicator/step_progress_indicator.dart';
class Bilan extends StatefulWidget {
  const Bilan({Key? key}) : super(key: key);

  @override
  State<Bilan> createState() => _BilanState();
}

class _BilanState extends State<Bilan> {

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
    return Scaffold(
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
                Text("Bilan",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500),),

              ],),
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
                                    Text("Actuel 500K €",style: TextStyle(fontSize: 13),)
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
                                    Text("Prévisions 4M €",style: TextStyle(fontSize: 13),)
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

                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    children: [
                                      Text("Montant restant",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                                      SizedBox(height: 35,),
                                      Text("3,5M €",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w800,color: Colors.black),),
                                      SizedBox(height: 45,),

                                      Container(
                                        height: 19,
                                        width: 147,
                                        child: StepProgressIndicator(
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
                                      ),
                                      SizedBox(height: 25,),
                                      Text("25%",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.blue),),
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
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset("images/1720.png"),
                                    SizedBox(width: 10,),
                                    Text("1720\n utilisateurs",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                                  ],
                                ),
                                SizedBox(height: 25,),
                                Row(
                                  children: [
                                    Icon(Icons.gif_box_outlined,color: Colors.blue,),
                                    SizedBox(width: 10,),
                                    Text("2925\n Donations",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,),),
                                  ],
                                ),
                                SizedBox(height: 25,),
                                Row(
                                  children: [
                                  Icon(Icons.crisis_alert_sharp,color: Colors.blue,),
                                    SizedBox(width: 10,),
                                    Text("500,25 K",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400), textAlign: TextAlign.center),
                                  ],
                                ),
                               
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
      ),
    );
  }
}
