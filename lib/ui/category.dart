import 'package:flutter/material.dart';
import '../theme/appBar.dart';
import '../theme/category.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => new _CategoryPageState();
}
class _CategoryPageState extends State<CategoryPage> {
  Settings _settings = new Settings(false,false);
  CategoryTheme _category = new CategoryTheme();
  _CategoryPageState() {
    _settings.on_create(setState);
  }
  List data=['clothes','computer','health','men','sport','travel','watches','clothes','computer','health','men','sport','travel','watches'];
  @override
  int _currentIndex=1;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: _settings.searchBar.build(context),
      bottomNavigationBar:_settings.BottomNav(_currentIndex, (i){setState(() {_currentIndex=i;});}),
      body:new Card(
        margin:EdgeInsets.zero,
        child: _category.showList(context,data)
      )
    );
  }
}