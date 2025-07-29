import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<dynamic> mQuets = [];
  @override
  void initState() {
    super.initState();
    getQuets();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Quets API"),centerTitle: true,),
      body: mQuets.isNotEmpty ? ListView.builder(
          itemCount: mQuets.length,
          itemBuilder: (_,index){
            return Padding(
              padding: const EdgeInsets.all(11.0),
              child: Card(
                child: ListTile(
                  title:  Text(mQuets[index]["quote"]),
                  subtitle: Text(
                        "~${mQuets[index]["author"]} ~ ",style: TextStyle(color: Colors.purple),),
                ),
              ),
            );
          }) : Center(child: Text("No data found"),)


    );
  }

    void getQuets() async {
    String url = "https://dummyjson.com/quotes";
    http.Response res = await http.get(Uri.parse(url));

    if(res.statusCode == 200){
      print(res.body);
      dynamic mData = jsonDecode(res.body);
      mQuets = mData["quotes"];
      setState(() {

      });
    }

    }
}