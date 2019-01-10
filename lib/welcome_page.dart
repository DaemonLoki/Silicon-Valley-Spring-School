import 'package:flutter/material.dart';
import 'overview.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class WelcomePage extends StatelessWidget {

  static final myOverviewNavKey = new GlobalKey<OverviewNavState>();

  final _playerWidget = new Chewie(
    new VideoPlayerController.asset("videos/intro.m4v"),
    autoPlay: false,
    aspectRatio: 1.8,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        color: Theme.of(context).primaryColor,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 120.0, horizontal: 20.0),
          children: <Widget>[
            Text(
              'Welcome',
              style: Theme.of(context).textTheme.headline,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 60.0),
              child: _playerWidget,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: RaisedButton(
                child: Text('LET\'S HAVE FUN WITH IT'),
                color: Theme.of(context).accentColor,
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OverviewNav(
                    key: myOverviewNavKey
                  )));
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}
