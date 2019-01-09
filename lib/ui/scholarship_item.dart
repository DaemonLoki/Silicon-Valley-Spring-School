import 'package:flutter/material.dart';

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
          Text(_title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text("Provided by: " + _donor,
                style: TextStyle(fontStyle: FontStyle.italic)),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child:
                Text(_content, style: TextStyle(fontWeight: FontWeight.w400)),
          )
        ],
      ),
    );
  }
}