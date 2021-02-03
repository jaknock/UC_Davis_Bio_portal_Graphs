import 'package:flutter/material.dart';
// import 'package:flutter_animated_bar_chart/bar_chart_graph.dart';
// import 'package:flutter_animated_bar_chart/bar_chart_model.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:bio_portal_1st_hw/bar_chart_model.dart';
import 'package:bio_portal_1st_hw/bar_chart_graph.dart';

import 'bar_chart_model.dart';

void main() {
  runApp(BarChartDemo());
}

class BarChartDemo extends StatefulWidget {
  @override
  _BarChartDemoState createState() => _BarChartDemoState();
}

class _BarChartDemoState extends State<BarChartDemo> {
  final List<BarChartModel> data = [
    BarChartModel(
      year: '2014',
      financial: 200,
      color: charts.ColorUtil.fromDartColor(Colors.black),
    ),
    BarChartModel(
      year: '2015',
      financial: 450,
      color: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    BarChartModel(
      year: '2016',
      financial: 120,
      color: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    BarChartModel(
      year: '2017',
      financial: 190,
      color: charts.ColorUtil.fromDartColor(Colors.yellow),
    ),
    BarChartModel(
      year: '2018',
      financial: 830,
      color: charts.ColorUtil.fromDartColor(Colors.lightBlueAccent),
    ),
    BarChartModel(
      year: '2019',
      financial: 950,
      color: charts.ColorUtil.fromDartColor(Colors.pink),
    ),
    BarChartModel(
      year: '2020',
      financial: 1000,
      color: charts.ColorUtil.fromDartColor(Colors.purple),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("UC Davis BioPortal Bargraph"),
          automaticallyImplyLeading: false,
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                BarChartGraph(data: data),
                BarChartGraph(data: data),
                BarChartGraph(data: data),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
