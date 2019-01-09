import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'ui/section_header.dart';

class ApplicationContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        playerWidget,
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SectionHeader("Why is this?"),
              Text(
                "I created this app as an addition to my application for the FAU Silicon Valley Spring School. To demonstrate the love for technology I created this app so feel free to play with it."
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SectionHeader("What is in here?"),
              ),
              Text(
                "I thought the usual application + CV combination was too boring so to combine this you can see all info I considered relevant for you about me."
              ),
              ContentShort("Personal Infos", "Infos about me as a person. Also how I'm living with my family and how enjoyable this is. ","Go To Personal")
            ],
          ),
        ),
      ],
    );
  }

  final playerWidget = new Chewie(
    new VideoPlayerController.asset("videos/intro.mp4"),
    autoPlay: true,
  );
}

class ContentShort extends StatelessWidget {

  ContentShort(this._title, this._description, this._buttonName);

  final String _title;
  final String _description;
  final String _buttonName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: new Column(
        children: <Widget>[
          Text(_title, style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(_description),
          ),
          RaisedButton(
            onPressed: () => {},
            child: Text(_buttonName))
        ],
      ),
    );
  }
}
