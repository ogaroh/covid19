import 'package:covid19/constant.dart';
import 'package:covid19/widgets/charts.dart';
import 'package:covid19/widgets/my_header.dart';
import 'package:flutter/material.dart';

class GlobalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GlobalStatsHeader(
              image: "assets/icons/doctor.svg",
              textTop: "Global Statistics",
              textBottom: "for COVID-19.",
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Cases vs Recoveries vs Deaths",
                    style: kTitleTextstyle,
                  ),
                  SizedBox(height: 20),
                  // other stuff
                  Container(
                    height: 450,
                    child: GroupedBarChart.withSampleData(),
                  ),
                  SizedBox(height: 50),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
