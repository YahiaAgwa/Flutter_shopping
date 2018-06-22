import 'package:flutter/material.dart';
import '../theme/appBar.dart';
import '../theme/details.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => new _DetailsPageState();
}
class _DetailsPageState extends State<DetailsPage> {
  Settings _settings = new Settings(false,true);
  DetailsTheme _details = new DetailsTheme();
  _DetailsPageState() {
    _settings.on_create(setState);
  }
  @override
  int _currentIndex=2;
  int type =0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: _settings.searchBar.build(context),
      bottomNavigationBar:_settings.BottomNav(_currentIndex, (i){setState(() {_currentIndex=i;});}),
      body:_details.showList(context, [])
    );
  }
}