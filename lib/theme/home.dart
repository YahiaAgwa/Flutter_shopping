
import 'package:flutter/material.dart';
class HomeTheme{
  Widget listBuild(obj,context) {
    return new GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed('/category');
      },
      child: new Container(
        margin:const EdgeInsets.all(2.0),
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new  AssetImage('assets/categories/$obj.jpg'),
            fit:BoxFit.cover
          )
        ),
        child: new Opacity(
          opacity: 0.5,
              child: new Center(
            child: new Container(
              padding: new EdgeInsets.all(5.0),
              width: 200.0,
              decoration: new BoxDecoration(
                color: Colors.black,
              ),
              child:new Center(
                child: new Text(obj,style: new TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18.0),)
                )
            )
          ),
        ),
      ),
    );
  }
}