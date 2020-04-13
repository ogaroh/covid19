import 'package:covid19/constant.dart';
import 'package:covid19/widgets/my_header.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

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
