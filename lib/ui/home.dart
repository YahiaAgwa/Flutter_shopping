import 'package:flutter/material.dart';
import '../theme/appBar.dart';
import '../theme/home.dart';

 class HomePage extends StatefulWidget  {
  
  
  @override
  _HomePageState createState() => new _HomePageState();
}
class _HomePageState extends State<HomePage>  {
  Settings _settings = new Settings(true,false);
  HomeTheme _home= new HomeTheme();
  _HomePageState() {
    _settings.on_create(setState);

  }
  List data=['clothes','computer','health','men','sport','travel','watches','clothes','computer','health','men','sport','travel','watches'];
  int _currentIndex=0;
 /*void fetchData() {
    getJson().then((res) {
      setState(() {
        data=res;
        print(res);
      });
    });
  }
  @override
  void initState() {
    super.initState();
    fetchData();
  }*/

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer:_settings.homeDrawer(context),
      appBar: _settings.searchBar.build(context),
      bottomNavigationBar:_settings.BottomNav(_currentIndex, (i){setState(() {_currentIndex=i;});}),

      body:new Container(
        child: new GridView.builder(
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: data.length,
          itemBuilder: (BuildContext context,_i){
                return _home.listBuild(data[_i],context);
          },
            ),
      ),
    );
  }
}