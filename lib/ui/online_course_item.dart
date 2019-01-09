import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OnlineCourseItem extends StatelessWidget {
  OnlineCourseItem(this._title, this._website, this._url);

  final String _title;
  final String _website;
  final String _url;

  void _tryToLaunchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _tryToLaunchUrl(_url),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              _title,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.web),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      _website,
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
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