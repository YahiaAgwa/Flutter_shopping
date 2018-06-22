import 'package:flutter/material.dart';
import '../theme/appBar.dart';
import '../theme/products.dart';

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => new _ProductsPageState();
}
class _ProductsPageState extends State<ProductsPage> {
  Settings _settings = new Settings(false,true);
  ProductTheme _product = new ProductTheme();
  _ProductsPageState() {
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
      body:new Container(
        margin:EdgeInsets.zero,
        child: (type==0)?_product.showList(context):((type==1)?_product.showListCard(context):_product.showListGrid(context)
            )
      ),
      floatingActionButton:  new FloatingActionButton(
        child: new Icon(Icons.grid_on),
        backgroundColor: Colors.purple,
          onPressed:(){
            if(type==2)type=-1;
            setState(() {
              type+=1;
            });
          },
      ),
    );
  }
}