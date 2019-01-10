import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'package:url_launcher/url_launcher.dart';
import 'ui/section_header.dart';
import 'welcome_page.dart';

class ApplicationContent extends StatelessWidget {

  final _playerWidget = new Chewie(
    new VideoPlayerController.asset("videos/overview.m4v"),
    autoPlay: false,
    aspectRatio: 1.8,
  );

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        _playerWidget,
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
              ContentShort("Personal Infos", "Infos about me as a person. Also how I'm living with my family and how enjoyable this is. ","Go To Personal", 1),
              ContentShort("Academia", "My academic records including what I focus on during studies as well as some highlights.", "Go To Academia", 2),
              ContentShort("Work Experience", "What experience I have gained so far in the industry in different positions.", "Go To Work Experience", 3),
              ContentShort("Extracurricular", "I've done a lot aside from university and work which resembles my enthusiasm and interest in all technological things.", "Go To Extracurricular", 4),
              SectionHeader("Social Media"),
              Text("You can also see me on different social media plattforms. Just click on what you want to see."),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SocialMediaLink("images/linkedin.png", "Stefan Blos", "https://www.linkedin.com/in/stefan-blos/"),
              ),
              SocialMediaLink("images/xing.png", "Stefan Blos", "https://www.xing.com/profile/Stefan_Blos/"),
              SocialMediaLink("images/twitter.png", "@stefanjblos", "https://twitter.com/stefanjblos"),
              SectionHeader("Source Code"),
              Text("I wrote this app using a beatiful little framework called Flutter. Therefore the code that is available could be used for both Android and iOS.\n\nI decided to make it available as OpenSource so that you can see the effort that went into the creation of the app. Just click below to take a look at the code."),
              SocialMediaLink("images/github.png", "Stefan to Silicon Valley", "https://github.com/DaemonLoki/Silicon-Valley-Spring-School"),
              Text("Finally, if you want to know what Flutter is and why I think it is cool, I wrote a blog post about this a little while ago. Please click the Medium link below to read this."),
              SocialMediaLink("images/medium.png", "Flutter - make cross-plattform development great again", "https://medium.com/@stefanblos/flutter-make-cross-platform-development-great-again-37084c14c2e")
            ],
          ),
        ),
      ],
    );
  }

  
}

class SocialMediaLink extends StatelessWidget {

  SocialMediaLink(this._imageName, this._name, this._url);

  final String _imageName;
  final String _name;
  final String _url;

  void _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return new InkWell(
      onTap: () => _launchUrl(_url),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(_imageName, height: 60.0,width: 60.0,),
            ),
            Flexible(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(_name, style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 18.0)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ContentShort extends StatelessWidget {

  ContentShort(this._title, this._description, this._buttonName, this._tabIndex);

  final String _title;
  final String _description;
  final String _buttonName;
  final int _tabIndex;

  void _onPersonalPressed(int tabIndex) {
    WelcomePage.myOverviewNavKey.currentState.tabController.animateTo(tabIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: new Column(
        children: <Widget>[
          Text(_title, style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(_description),
          ),
          RaisedButton(
            onPressed: () => _onPersonalPressed(_tabIndex),
            child: Text(_buttonName))
        ],
      ),
    );
  }
}
