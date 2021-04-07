import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class BarChartModel {
  String site_ID;
  int cases;
  final charts.Color color;

  BarChartModel({
    this.site_ID,
    this.cases,
    this.color,
  });
}
