import 'package:flutter/material.dart';
import 'ui/section_header.dart';

class WorkContent extends StatelessWidget {
  const WorkContent();

  @override
  Widget build(BuildContext context) {
    return new ListView(padding: const EdgeInsets.all(20.0), children: <Widget>[
      const SectionHeader("Freelancing"),
      const JobDescription("Freelance App Developer", "Self-Employed", "Developed apps for Android and iOS for clients. This included development of native apps programmed in Java & Kotlin (Android) and Swift (iOS). Also included working with server technologies to communicate with cloud backends.\n\nAlso included working with exciting technologies like Augmented Reality and corresponding frameworks (e.g. ARKit for iOS). ", "images/im_the_boss.png"),
      const SectionHeader("Student Jobs"),
      const JobDescription(
        "WORKING STUDENT", 
        "e.solutions GmbH",
        "Part of a Machine Learning team. Helped in creation of algorithms for feature requests. Did some data analysis and preprocessing in Python. Created an Android app for internal use completely from scratch.",
        "images/eso.png"),
      const JobDescription(
        "WORKING STUDENT", 
        "Siemens Healthineers", 
        "Part of Software Development team 'Boston' at syngo.via. Created command-line based test automation tool with automatic merging and version control assistance. Helped develop features that got shipped in the final product. Assisted with test creation (unit and integration tests).", 
        "images/siemens.png"),
      const SectionHeader("Internships"),
      const JobDescription(
        "Intern in Software Development", 
        "e.solutions GmbH", 
        "I was part of a development team that focussed on integration of online services in Automotive Infotainment. \n\nConcretely I worked on an SDK that allowed third party companies create applications for the Porsche Infotainment system that was shipped in cars like the newest Porsche Cayman. This included shipping features as well as talking to other companies about implementation details and assisting them when problems occurred.", 
        "images/eso.png"),
      const JobDescription(
        "Intern in Software Development", 
        "Siemens Healthineers", 
        "Part of the 'Boston' team that develops diagnosing software for doctors. As part of the internship I got to know the technology stack they were using and the workflow they use in their Scrum teams. After that I was able to assist in development of features and wrote tests to ensure the quality of the system meets the high requirements.", 
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
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
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
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
