import 'package:flutter/material.dart';

Widget popUp1(){
  return Container(
    color: Colors.transparent,
    width: double.infinity,
    height: 50,
    child: const ListTile(
      leading: Icon(Icons.video_call, color: Colors.blue,),
      title: Text("Easy meetings with anyone", style: TextStyle(fontSize: 15),),
      subtitle: Text("Tab here to start a vedio meeting", style: TextStyle(fontSize: 12, color: Color.fromARGB(255, 158, 158, 158) ), ),
      trailing: Icon(Icons.close_sharp, size: 20,),
    )
  );
}