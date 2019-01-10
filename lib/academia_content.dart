import 'package:flutter/material.dart';
import 'ui/section_header.dart';

class AcademiaContent extends StatelessWidget {
  
  final Widget _mlSubjects = new Column(
    children: <Widget>[
      SubjectRow("Pattern Recognition", "1.3"),
      SubjectRow("Pattern Analysis", "2.0"),
      SubjectRow("Deep Learning", "1.0")
    ],
  );

  final Widget _aiSubjects = new Column(
    children: <Widget>[
      SubjectRow("Artificial Intelligence I", "3.7"),
      SubjectRow("Artificial Intelligence II", "3.0")
    ],
  );

  final Widget _projectSubject = new Column(
    children: <Widget>[
      SubjectRow("Innovation Lab for Wearable \n& Ubiquitous Computing", "1.0"),
    ]
  );

  Widget _createFocusAreaHeader(String name) {
    return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: new Text(name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(children: <Widget>[
        const SectionHeader("Currently"),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text("Computer Science - Master",
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18.0)),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: new Text("Grade: 1.8 (62.5 ECTS)",
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20.0, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
        const SectionHeader("Focus Areas"),
        _createFocusAreaHeader("Machine Learning"),
        _mlSubjects,
        _createFocusAreaHeader("Artificial Intelligence"),
        _aiSubjects,
        _createFocusAreaHeader("Project"),
        _projectSubject,
        const SectionHeader("Highlights"),
        HighlightWidget(
            "BlindAR",
            "1st place in INNOVATION LAB",
            "Created an app for Microsoft Hololens to make blind people able to use touchscreens. \n\nUsed pattern recognition to differentiate between different screens and devices. Voice guidance as well as hand detection helps users to select desired touch goal. Hand guidance with use of built-in Hololens technology to guide hand to goal.\n\nWon 1st place out of all teams with pitch in front of whole chair.",
            "images/blindar_logo.png"),
        HighlightWidget(
            "Freethrow-Tracker",
            "Wearable Computing Seminar",
            "Wrote an Android app for tracking freethrows in basketball. This included the whole app written in Android with pre-designed UI.\n\nInternally it used the direct bluetooth signals from a wearable armband called 'MYO'. This data was fed to an algorithm to detect whether the subject put up a basketball shot.\n\nCreation of the algorithm required preprocessing of the data. After that different algorithms were tested and one was selected.\n\nIn order to receive the direct bluetooth the SDK provided by creator of 'MYO' needed to be 'hacked' to extract the info.\n\nIn the end a decently working prototype was created and evaluated by experiments performed on an amateur basketball team and led to acceptable results..",
            "images/tracker.png"),
      ]),
    );
  }
}

class SubjectRow extends StatelessWidget {

  SubjectRow(this._name, this._grade);

  final String _name;
  final String _grade;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(_grade, style: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic),),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text(_name),
          )
        ],
      ),
    );
  }
}

class HighlightWidget extends StatelessWidget {
  HighlightWidget(
      this._projectName, this._course, this._description, this._logoLocation);

  final String _projectName;
  final String _course;
  final String _description;
  final String _logoLocation;

  @override
  Widget build(BuildContext context) {
    return new Padding(
        padding: EdgeInsets.symmetric(vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      _projectName,
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        _course,
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                ),
                Image.asset(_logoLocation, height: 60.0)
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(_description,
                  style: TextStyle(fontWeight: FontWeight.w400)),
            )
          ],
        ));
  }
}
