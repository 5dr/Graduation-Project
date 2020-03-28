import 'package:flutter/material.dart';





class DataSearch extends SearchDelegate<String>{
  final names=["tata","nana","ahmed","amr","zyaed","7edr","sa3ed","batta","3sfooor","nooor","samy"];
  final recent=["tata","nana","ahmed","amr"];
  @override
  List<Widget> buildActions(BuildContext context) {
    return[
      IconButton(
          icon: Icon(Icons.close),
          onPressed: (){
            query="";
          }),
      IconButton(
          icon: Icon(Icons.filter_list),
          onPressed: (){
            query="";
          })

    ];
  }
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon:AnimatedIcon(
      icon: AnimatedIcons.menu_arrow,
      progress: transitionAnimation,
    ) ,
        onPressed: (){
          close(context, null);
        }) ;
  }
  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
  }
  @override
  Widget buildSuggestions(BuildContext context) {
    final seggname=query.isEmpty?recent:names.where((p)=>p.startsWith(query)).toList();
    return ListView.builder(itemBuilder: (context,index)=>ListTile(

      leading: Icon(Icons.location_city),
      title: Text(seggname[index]),
    ),
      itemCount: seggname.length,
    );

  }
}