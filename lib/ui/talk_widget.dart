import 'package:flutter/material.dart';

class TalkWidget extends StatelessWidget {
  TalkWidget(this._title, this._location, this._description);

  final String _title;
  final String _location;
  final String _description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TalkTitle(_title),
          TalkLocation(_location),
          TalkDescription(_description)
        ],
      ),
    );
  }
}

class TalkDescription extends StatelessWidget {
  TalkDescription(this._description);

  final String _description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Text(
        _description,
        style: TextStyle(fontStyle: FontStyle.italic),
      ),
    );
  }
}

class TalkLocation extends StatelessWidget {
  TalkLocation(this._location);

  final String _location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Text(_location, style: TextStyle(fontWeight: FontWeight.w100)),
    );
  }
}

class TalkTitle extends StatelessWidget {
  TalkTitle(this._title);

  final String _title;

  @override
  Widget build(BuildContext context) {
    return Text(_title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0));
  }
}