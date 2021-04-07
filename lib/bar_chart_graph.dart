import 'package:bio_portal_1st_hw/bar_chart_model.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'bar_chart_model.dart';

class BarChartGraph extends StatefulWidget {
  final List<BarChartModel> data;

  BarChartGraph({@required this.data});

  @override
  _BarChartGraphState createState() => _BarChartGraphState(data: this.data);
}

class _BarChartGraphState extends State<BarChartGraph> {
  _BarChartGraphState({
    @required this.data,
  });

  final List<BarChartModel> data;

  Widget _buildFinancialList(
      List<charts.Series<BarChartModel, String>> series) {
    var barChartList = series;
    return barChartList != null
        ? ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => Divider(
              color: Colors.white,
              height: 5,
            ),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: barChartList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: MediaQuery.of(context).size.height / 1.2,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Cases",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Expanded(child: charts.BarChart(series, animate: true)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Site_ID",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              );
            },
          )
        : SizedBox();
  }

  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
          id: "Site_ID",
          data: data,
          domainFn: (BarChartModel series, _) => series.site_ID,
          measureFn: (BarChartModel series, _) => series.cases,
          colorFn: (BarChartModel series, _) => series.color),
    ];

    return _buildFinancialList(series);
  }
}
