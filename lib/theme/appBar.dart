import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';

class Settings
{
  SearchBar searchBar;
  final bool showMore;
  final bool subheader;
  Settings(this.showMore,this.subheader);
  void on_create(setState){
    searchBar = new SearchBar(
      inBar: true,
      setState: setState,
      onSubmitted: print,
      buildDefaultAppBar: buildAppBar
    );
  }
  AppBar buildAppBar(context){
    return new AppBar(
      actions: <Widget>[
          searchBar.getSearchAction(context),
          new IconButton(
            icon: new Icon(Icons.shopping_cart),
            onPressed: (){},
          ),
        (showMore)?new PopupMenuButton(
              onSelected: (i){
                print(i);
              },
              itemBuilder: (BuildContext context) {
                return ['help','contact us'].map((choice) {
                  return new PopupMenuItem(
                    value: choice,
                    child: new Row(
                      children: <Widget>[
                        (choice=='help')?new Icon(Icons.help):new Icon(Icons.mail),
                        new Text(choice),
                      ],
                    ),
                  );
                }).toList();
              },
            ):new Wrap(),
        ],
        title: new Text("Your Shop"),
        centerTitle: false,
        backgroundColor: Colors.purple
    );
  }
  Drawer homeDrawer(BuildContext context) {
     return new Drawer(
      child: new ListView(
        children: <Widget>[
          new DrawerHeader(
            decoration: new BoxDecoration(
              color: Theme.of(context).primaryColor
            ),
            child: new Container(
              child: new Column(
                children: <Widget>[
                  new CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColorLight,
                    radius: 50.0,
                    backgroundImage: new AssetImage("assets/user.jpg"),
                  ),
                  new Padding(padding: new EdgeInsets.only(top:10.0),),
                  new Center(
                    child: new Text("Yahia Agwa",style: new TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            ),
          ),
          new ListTile(
            title: new Text("Home"),
            leading: new Icon(Icons.home),
            onTap: (){},
          ),            
          new ListTile(
            title: new Text("Categories"),
            leading: new Icon(Icons.category),
            onTap: (){},
          ),            
          new ListTile(
            title: new Text("Tags"),
            leading: new Icon(Icons.tag_faces),
            onTap: (){},
          ),
          new ListTile(
            title: new Text("Pages"),
            leading: new Icon(Icons.pages),
            onTap: (){},
          ),
          new ListTile(
            title: new Text("Settings"),
            leading: new Icon(Icons.settings),
            onTap: (){},
          ),
          new ListTile(
            title: new Text("Profile"),
            leading: new Icon(Icons.person),
            onTap: (){},
          ),
          new ListTile(
            title: new Text("Signout"),
            leading: new Icon(Icons.exit_to_app),
            onTap: (){},
          ),
        ],
      ),
    );
  }
  Material BottomNav(i,onTap){
    return new Material(
        color: Colors.orange,
        child: new BottomNavigationBar(
          type:  BottomNavigationBarType.fixed,
          fixedColor: Colors.purple,
          currentIndex: i,
          onTap: onTap,
          items: [
            new BottomNavigationBarItem(icon: new Icon(Icons.home),title:new Text("home")),
            new BottomNavigationBarItem(icon: new Icon(Icons.favorite),title:new Text("favorites")),
            new BottomNavigationBarItem(icon: new Icon(Icons.person),title:new Text("profile")),
            new BottomNavigationBarItem(icon: new Icon(Icons.settings),title:new Text("settings")),
          ],
        ),
      );
  }
}