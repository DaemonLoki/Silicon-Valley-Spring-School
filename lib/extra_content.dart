import 'package:flutter/material.dart';
import 'ui/section_header.dart';
import 'ui/talk_widget.dart';

class ExtraContent extends StatelessWidget {
  const ExtraContent();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Image.asset(
          "images/meetup_talk.jpeg",
          height: 240.0,
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SectionHeader("Talks"),
        ),
        TalkWidget(
          "Introduction to MLKit", 
          "GDG Meetup Nuremberg",
          "Talk about Google's framework for machine learning on mobile. Part of Nuremberg Digital Festival.\nIncluded basics of machine learning and applications specific to mobile devices.\nAfter the talk a workshop followed where participants were assisted in first steps with the mentioned technologies such as MLKit, Tensorflow, Android."),
        TalkWidget(
          "Firebase for Android developers",
          "GDG Meetup Erlangen",
          "Workshop with introduction for developers of different skillsets. Included some live coding as well as assistance in tackling own problems."
        ),
        TalkWidget(
          "Introduction to Android",
          "GDG Meetup Nuremberg",
          "Introductory talk for beginners. Basics of the system of Android as well as development basics. Afterwards helped participants start their own projects and help them with the first steps in Android development."
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SectionHeader("Sholarships"),
        ),
        SholarshipItem(
          "Android Developer Sholarship",
          "Google & Udacity",
          "Received sholarship to participate in the Nanodegree program at Udacity. This was provided by Google and Udacity. After a challenge phase with ~10.000 people only a few hundred were selected for this program. After being one of the few I was happy to be part of the community as well as to visit the Google offices in Munich as part of the program. Aside from that I learned a lot about both basics and advanced concepts of Android development."
        ),
        SholarshipItem(
          "PyTorch Development Sholarship",
          "Facebook & Udacity",
          "A world-wide sholarship program for motivated learners. It comes with an exclusive access to an only course about applying deep learning algorithms to different problems. It includes practical exercises as well as a challenge at the end of the course. Again a community was created to discuss ideas and learning progress among all students which offers the possibility to collaborate with other students around the world."
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SectionHeader("Online Courses"),
        ),
        OnlineCourseItem(
          "Machine Learning",
          "Stanford University on Coursera"
        ),
        OnlineCourseItem(
          "Deep Learning Specialization",
          "deeplearning.ai"
        ),
        OnlineCourseItem(
          "Material Design for Android Developers",
          "Udacity.com"
        ),
        OnlineCourseItem(
          "Intermediate iOS: Get Job Ready with Swift",
          "Udemy.com"
        ),
        OnlineCourseItem(
          "Build Native Mobile Apps with Flutter",
          "Udacity.com"
        ),
        OnlineCourseItem(
          "Mastering Mobile App Design with Sketch",
          "Udemy.com"
        ),
        OnlineCourseItem(
          "Deep Learning",
          "Udacity.com"
        )
      ],
    );
  }
}

class SholarshipItem extends StatelessWidget {

  SholarshipItem(this._title, this._donor, this._content);

  final String _title;
  final String _donor;
  final String _content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(_title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Text("Provided by: " + _donor, style: TextStyle(fontWeight: FontWeight.w100)),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text(_content, style: TextStyle(fontStyle: FontStyle.italic)),
          )
        ],
      ),
    );
  }
}

class OnlineCourseItem extends StatelessWidget {

  OnlineCourseItem(this._title, this._website);

  final String _title;
  final String _website;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(_title, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 20.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.web),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(_website, style: TextStyle(fontStyle: FontStyle.italic),),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}