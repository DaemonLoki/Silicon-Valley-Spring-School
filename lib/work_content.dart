import 'package:flutter/material.dart';
import 'ui/section_header.dart';

class WorkContent extends StatelessWidget {
  const WorkContent();

  @override
  Widget build(BuildContext context) {
    return new ListView(padding: const EdgeInsets.all(20.0), children: <Widget>[
      const SectionHeader("Work Experience"),
      const JobDescription(
        "WORKING STUDENT", 
        "e.solutions GmbH",
        "Part of a Machine Learning team. Helped in creation of algorithms for feature requests. Did some data analysis and preprocessing in Python. Created an Android app for internal use completely from scratch.",
        "images/eso.png"),
      const JobDescription(
        "WORKING STUDENT", 
        "Siemens Healthineers", 
        "Part of Software Development team 'Boston' at syngo.via. Created command-line based test automation tool with automatic merging and version control assistance. Helped develop features that got shipped in the final product. Assisted with test creation (unit and integration tests).", 
        "images/siemens.png")
    ]);
  }
}

class JobDescription extends StatelessWidget {
  const JobDescription(this._title, this._company, this._description, this._imagePath);

  final String _title;
  final String _company;
  final String _description;
  final String _imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    _title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: new Text(
                        _company,
                        style: TextStyle(fontStyle: FontStyle.italic),
                      )),
                ],
              ),
              Image(image: AssetImage(_imagePath), width: 100.0, height: 70.0,fit: BoxFit.contain,)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: new Text(
              _description,
              style: TextStyle(fontWeight: FontWeight.w200),
            ),
          )
        ],
      ),
    );
  }
}
