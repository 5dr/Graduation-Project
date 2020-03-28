import 'package:flutter/material.dart';
import 'package:graduation/Search.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'app_localizations.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
   // var localization = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),onPressed: (){
            showSearch(context:context,delegate:DataSearch());
          })
        ],
      ),
      body: Center(
        child:Text(
         // "tata",
          AppLocalizations.of(context).translate('first_string'),
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      drawer: Drawer(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}