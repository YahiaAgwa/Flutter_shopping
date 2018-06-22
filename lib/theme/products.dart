import 'package:flutter/material.dart';
import 'package:share/share.dart';

class ProductTheme{
  List data = [1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9];
  Widget showListGrid(context){
    return new GridView.count(
              crossAxisCount: 2,
              children:data.map((item){
                return new GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed('/details'); 
          },
          child: new Container(
            margin:const EdgeInsets.all(2.0),
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new  AssetImage('assets/categories/clothes.jpg'),
                fit:BoxFit.cover
              )
            ),
            child: new Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                new Opacity(
                  opacity: 0.8,
                    child: new Container(
                      width: 175.0,
                      padding: new EdgeInsets.all(5.0),
                      decoration: new BoxDecoration(
                        color: Colors.black,
                      ),
                        child: new Row(
                          children: <Widget>[
                            new Text("product name",style: new TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16.0),),
                            
                          ],
                        )
                    )
                  ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
  ListView showList(context){
    return new ListView(
      children: data.map((item){
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
                          new Text("brand name")
                        ],
                    ),
                      )),
                    new Container(
                      child: new IconButton(alignment: Alignment.centerRight,
                        icon: new Icon(Icons.share),
                        onPressed: (){
                              Share.share("some text to share");
                        },
                      ),
                    )
                  ],
                ),
        );
      }).toList()
    );
  }
  ListView showListCard(context){
    return new ListView(
      children: data.map((item){
        return new GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed('/details');
          },
          child: new Column(
            children: <Widget>[
              new Container(
                child: new  Image.asset('assets/categories/clothes.jpg')
              ),
                new Row(
                  children: <Widget>[
                    new Expanded(
                      child:new ListTile(
                      title: new Text("Product name"),
                      subtitle: new Text("brand name"),
                    )),
                    new Container(
                      
                      child: new IconButton(alignment: Alignment.centerRight,
                        icon: new Icon(Icons.share),
                        onPressed: (){
                              Share.share("some text to share");
                        },
                      ),
                    )
                  ],
                ),
            ],
          ),
        );
      }).toList()
    );
  }
}