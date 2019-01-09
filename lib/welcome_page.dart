import 'package:flutter/material.dart';
import 'overview.dart';

class WelcomePage extends StatelessWidget {

  static final myOverviewNavKey = new GlobalKey<OverviewNavState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        color: Theme.of(context).primaryColor,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 180.0, horizontal: 20.0),
          children: <Widget>[
            Text(
              'Welcome',
              style: Theme.of(context).textTheme.headline,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 80.0, horizontal: 20.0),
              child: Text(
                'This project was created to show you why Stefan is perfectly suited to paticipate in the trip to Silicon Valley',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                  color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: RaisedButton(
                child: Text('LET\'S SEE'),
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
