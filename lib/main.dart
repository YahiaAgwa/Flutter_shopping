import 'package:flutter/material.dart';
import './ui/home.dart';
import './ui/category.dart';
import './ui/products.dart';
import './ui/details.dart';
import './ui/cart.dart';
main()async {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget  {
  // This widget is the root of your application.
  @override
  MyAppState createState() {
    return new MyAppState();
  }
}
class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      routes: <String, WidgetBuilder> { //5
        '/home': (BuildContext context) => new HomePage(), //6
        '/category': (BuildContext context) => new CategoryPage(), //6
        '/products': (BuildContext context) => new ProductsPage(), //6
        '/details': (BuildContext context) => new DetailsPage(), //6
        '/cart': (BuildContext context) => new CartPage(), //6
      },
      debugShowCheckedModeBanner: false,
      title: 'WooCommerce',
      theme: new ThemeData(
        primaryColor: Colors.purple,
        primaryColorLight: Colors.purple.shade300,
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(),
    );
  }
}