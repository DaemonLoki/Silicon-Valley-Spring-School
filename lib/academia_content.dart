import 'package:flutter/material.dart';
import 'ui/section_header.dart';

class AcademiaContent extends StatelessWidget {
  const AcademiaContent();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(children: <Widget>[
        const SectionHeader("CURRENTLY"),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text("Computer Science - Master",
                  style: Theme.of(context).textTheme.subhead),
              new Text("Grade: 1.8 (62.5 ECTS)",
                  style: Theme.of(context).textTheme.subhead),
            ],
          ),
        ),
        const SectionHeader("FOCUS"),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: new Text("Machine Learning & AI",
              style: Theme.of(context).textTheme.subhead),
        ),
        const SectionHeader("HIGHLIGHTS"),
        Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "1st place in INNOVATION LAB with BlindAR:",
                  style: Theme.of(context).textTheme.subhead,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Created app for Microsoft Hololens to make blind people able to use touchscreens. \nUsed pattern recognition to differentiate between different screens and devices. \nVoice guidance as well as hand detection helps users to select desired touch goal.\nHand guidance with use of built-in Hololens technology to guide hand to goal.\nWon 1st place out of all teams with pitch in front of whole chair.",
                  style: TextStyle(fontStyle: FontStyle.italic, height: 1.2),),
                )
              ],
            )),
      ]),
    );
  }
}