import 'package:charts_flutter/flutter.dart' as charts;

import 'package:flutter/material.dart';


import 'bar_chart_model.dart';


class HomePage extends StatelessWidget {

  final List<BarChartModel> data = [

    BarChartModel(

      year: "1997",

      financial: 250,

      color: charts.ColorUtil.fromDartColor(Colors.white70),

    ),

    BarChartModel(

      year: "1998",

      financial: 300,

      color: charts.ColorUtil.fromDartColor(Colors.yellow),

    ),

    BarChartModel(

      year: "1999",

      financial: 100,

      color: charts.ColorUtil.fromDartColor(Colors.green),

    ),

    BarChartModel(

      year: "2000",

      financial: 450,

      color: charts.ColorUtil.fromDartColor(Colors.lightBlueAccent),

    ),

    BarChartModel(

      year: "2001",

      financial: 630,

      color: charts.ColorUtil.fromDartColor(Colors.blue),

    ),

    BarChartModel(

      year: "2002",

      financial: 950,

      color: charts.ColorUtil.fromDartColor(Colors.purpleAccent),

    ),

    BarChartModel(

      year: "2002",

      financial: 400,

      color: charts.ColorUtil.fromDartColor(Colors.deepPurpleAccent),

    ),

  ];


  @override

  Widget build(BuildContext context) {

    List<charts.Series<BarChartModel, String>> series = [

      charts.Series(

        id: "financial",

        data: data,

        domainFn: (BarChartModel series, _) => series.year,

        measureFn: (BarChartModel series, _) => series.financial,

        colorFn: (BarChartModel series, _) => series.color,

      ),

    ];


    return Scaffold(

      appBar: AppBar(

        title: const Text("Bar Chart"),

        centerTitle: true,

        backgroundColor: Colors.green[700],

      ),

      body: Container(

        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),

        child: charts.BarChart(

          series,

          animate: true,

        ),

      ),

    );

  }

}