import 'dart:async';

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key,}) : super(key: key);



  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class ClicksPerYear {
  final String year;
  final int clicks;
  final charts.Color color;

  ClicksPerYear(this.year, this.clicks, Color color)
      : this.color = charts.Color(
      r: color.red, g: color.green, b: color.blue, a: color.alpha);
}

class _MyHomePageState extends State<MyHomePage> {

 @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var data = [
      ClicksPerYear('Videos', 12, Colors.red),
      ClicksPerYear('Words', 42, Colors.yellow),
      ClicksPerYear('Points', 10, Colors.green),
    ];

    var series = [
      charts.Series(
        domainFn: (ClicksPerYear clickData, _) => clickData.year,
        measureFn: (ClicksPerYear clickData, _) => clickData.clicks,
        colorFn: (ClicksPerYear clickData, _) => clickData.color,
        id: 'Clicks',
        data: data,
      ),
    ];

    var chart = charts.BarChart(
      series,
      animate: true,
    );

    var chartWidget = Padding(
      padding: EdgeInsets.all(2.0),
      child: Container(
        color: Colors.black.withOpacity(0.1),
        height: 290,
        child: chart,
      ),
    );

    return Scaffold(

      body: Container(
        color: Colors.black.withOpacity(0.1),
        child: Column(
          children: <Widget>[
            chartWidget,
          ],
        ),
      ),

    );
  }
}

