import 'package:flutter/material.dart';

class CartTheme{
    List data = [1,2,3];
  Widget showList(context,i){
      return new Stack(
        children: <Widget>[
          new ListView.builder( 
            itemCount: data.length+6,
            itemBuilder: (BuildContext context,int _i){
              if(_i<data.length)
                return new GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed('/details');
                  },
                  child: new Row(
                          children: <Widget>[
                            new Container(
                              height: 80.0,
                              width: 100.0,
                              child: new Image.asset('assets/categories/clothes.jpg')
                            ),
                            new Expanded(
                              child:new Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: new Column(
                                  
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                children:<Widget>[
                                  new Text("product name",style: new TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold)),
                                  new Text("price : \$8.0"),
                                  new Text("total : \$16.0"),
                                  new IconButton(icon: new Icon(Icons.delete),onPressed: (){},color: Colors.redAccent,),

                                ],
                            ),
                              )
                              ),
                            new Container(
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new IconButton(icon: new Icon(Icons.remove),onPressed: (){},color: Colors.purple,),
                                  new Text("2"),
                                  new IconButton(icon: new Icon(Icons.add),onPressed: (){},color: Colors.purple,),
                                ],
                              ),
                            ),

                          ],
                        ),
                );
                else if(_i == data.length)
                return  new Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Row(
                      children: <Widget>[
                        new Expanded(child: new TextField(decoration: InputDecoration(
    hintText: 'Enter PromoCode'
  ),)),
                        new RaisedButton(child: new Text("Apply",style: new TextStyle(color: Colors.white),),onPressed: (){},color: Colors.purple,)
                      ],
                  ),
                );
                else if(_i == data.length+1)
                  return new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Row(
                      children: <Widget>[
                        new Expanded(child: new Text("subTotal",style: new TextStyle(fontWeight: FontWeight.bold),)),
                        new Container(
                          child: new Text("\$36.0"),
                        )

                      ],
                    ),
                  );else if(_i == data.length+2)
                  return new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Row(
                      children: <Widget>[
                        new Expanded(child: new Text("Tax",style: new TextStyle(fontWeight: FontWeight.bold),)),
                        new Container(
                          child: new Text("\$0.0"),
                        )

                      ],
                    ),
                  );else if(_i == data.length+3)
                  return new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Row(
                      children: <Widget>[
                        new Expanded(child: new Text("Shipping",style: new TextStyle(fontWeight: FontWeight.bold),)),
                        new Container(
                          child: new Text("\$10.0"),
                        )

                      ],
                    ),
                  );
                  else if(_i == data.length+4)
                  return new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Row(
                      children: <Widget>[
                        new Expanded(child: new Text("Grand Total",style: new TextStyle(fontWeight: FontWeight.bold),)),
                        new Container(
                          child: new Text("\$46.0"),
                        )

                      ],
                    ),
                  );
                  else if(_i == data.length+5)
                  return new Padding(
                    padding: const EdgeInsets.all(20.0),
                  );
            }
              ),

              new Positioned(
                bottom: 5.0,left: 5.0,right: 5.0,
              child: new RaisedButton(child: new Text("CHECKOUT",style: new TextStyle(color: Colors.white),),onPressed: (){},color: Colors.purple,),
            )
        ],
      );
    }
}