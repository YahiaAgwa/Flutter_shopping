import 'package:flutter/material.dart';
import '../theme/appBar.dart';
import '../theme/cart.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => new _CartPageState();
}
class _CartPageState extends State<CartPage> {
  Settings _settings = new Settings(false,true);
  CartTheme _cart = new CartTheme();
  _CartPageState() {
    _settings.on_create(setState);
  }
  @override
  int _currentIndex=2;
  int type =0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: _settings.searchBar.build(context),
      body:_cart.showList(context, []),
    );
  }
}