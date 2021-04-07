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
      site_ID: 'site 1',
      cases: 16,
      color: charts.ColorUtil.fromDartColor(Colors.lightBlueAccent),
    ),
    BarChartModel(
      site_ID: 'site 2',
      cases: 5,
      color: charts.ColorUtil.fromDartColor(Colors.lightBlueAccent),
    ),
    BarChartModel(
      site_ID: 'site 3',
      cases: 2,
      color: charts.ColorUtil.fromDartColor(Colors.lightBlueAccent),
    ),
    BarChartModel(
      site_ID: 'site 4',
      cases: 1,
      color: charts.ColorUtil.fromDartColor(Colors.lightBlueAccent),
    ),
    BarChartModel(
      site_ID: 'site 5',
      cases: 8,
      color: charts.ColorUtil.fromDartColor(Colors.lightBlueAccent),
    ),
    BarChartModel(
      site_ID: 'site 6',
      cases: 9,
      color: charts.ColorUtil.fromDartColor(Colors.lightBlueAccent),
    ),
    BarChartModel(
      site_ID: 'site 7',
      cases: 10,
      color: charts.ColorUtil.fromDartColor(Colors.lightBlueAccent),
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
        primarySwatch: Colors.yellow,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cases per site ID"),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
