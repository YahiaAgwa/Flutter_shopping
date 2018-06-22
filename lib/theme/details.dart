import 'package:flutter/material.dart';

class DetailsTheme{
  Widget showList(context,data){
    return new Container(
        margin:EdgeInsets.zero,
        child: ListView(children: <Widget>[
          new Image.asset("assets/categories/clothes.jpg"), 
          Padding(padding: EdgeInsets.all(10.0)),
          new Row(children: <Widget>[
            Expanded(child: new Text("product Name"),),
            Container(child: new Row(children: <Widget>[
              new Icon(Icons.star,color: Colors.purple,),
              new Icon(Icons.star,color: Colors.purple,),
              new Icon(Icons.star,color: Colors.purple,),
              new Icon(Icons.star),
              new Icon(Icons.star),
            ]))
          ]),
          new Row(children: <Widget>[
            Expanded(child: new Text('\$8.00',style:new TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0))),
            Container(child: new Row(children: <Widget>[
              new Icon(Icons.favorite,color: Colors.purple,),
            ]))
          ]),
          Padding(padding: EdgeInsets.all(10.0)),
          new RaisedButton(child: new Text("ADD TO CART",style: new TextStyle(color: Colors.white),),color: Colors.purple,onPressed: (){
            Navigator.of(context).pushNamed('/cart');
          }),
          Padding(padding: EdgeInsets.all(10.0)),
          new Center(
            child: new Text(
                " The text doesn't wrap because the Row only constrains the width of children that have been wrapped in a Flexible widget. In this case the unconstrained width of the Container with the Text child is greater than the available width. So it just overflows the Row."
                "If this turns out to be a common failure mode, we might try and detect it and generate a suggested fix. For example we might notice when a Row overflows and the sum of the children's minimum intrinsic widths would not overflow.!"
                ,textAlign: TextAlign.justify,),
          ),
          Padding(padding: EdgeInsets.all(10.0)),
        ]),
      );
  }
}