import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader(this._title);

  final String _title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(_title, style: TextStyle(color: Colors.grey[700], fontSize: 16.0)),
        Divider()
      ],
    );
  }
}