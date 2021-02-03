import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class BarChartModel {
  String year;
  int financial;
  final charts.Color color;

  BarChartModel({
    this.year,
    this.financial,
    this.color,
  });
}
