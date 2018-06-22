import 'package:flutter/material.dart';

class CategoryTheme{
  ListView showList(context,data){
    return new ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context,_i){
          return new ListTile(
            title: new Text(data[_i]),
            //subtitle: new Text("some details about category here"),
            leading: new CircleAvatar(
              backgroundImage: new AssetImage('assets/categories/${data[_i]}.jpg')
            ),
            onTap: (){
              Navigator.of(context).pushNamed('/products');
            }
        );
        }
        ,
    );
  }
}