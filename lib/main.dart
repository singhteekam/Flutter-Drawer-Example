import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Drawer Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  
  String name= "Teekam Singh";
  String email= "teekam***@gmail.com";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Drawer Example")
      ),
      body: Center(
        child: Container(
          child: Text("Drawer Example App",textAlign:TextAlign.start,
            style:TextStyle(color:Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 35),),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text(name),
               accountEmail: Text(email),
               currentAccountPicture: new CircleAvatar(
                 backgroundImage: NetworkImage("https://picjumbo.com/wp-content/uploads/free-stock-images-1080x720.jpg"),
                 backgroundColor: Colors.grey,
               ),
               otherAccountsPictures: <Widget>[
                 new CircleAvatar(
                   backgroundImage:NetworkImage("https://www.w3schools.com/howto/img_forest.jpg"),
                   backgroundColor: Colors.grey[200],
                 ),
               ],
            ),
            
            FlatButton(onPressed: ()=>null,
               child: Row(
                 children:<Widget>[
                   Icon(Icons.home),
                   Text("Home")
                 ]
               )),
               FlatButton(onPressed: ()=>null,
               child: Row(
                 children:<Widget>[
                   Icon(Icons.camera_alt),
                   Text("open camera")
                 ]
               )),
               FlatButton(onPressed: ()=>null,
               child: Row(
                 children:<Widget>[
                   Icon(Icons.email),
                   Text("Send Email")
                 ]
               )),
               FlatButton(onPressed: ()=>null,
               child: Row(
                 children:<Widget>[
                   Icon(Icons.videocam),
                   Text("Record Video")
                 ]
               )),
               FlatButton(onPressed: ()=>null,
               child: Row(
                 children:<Widget>[
                   Icon(Icons.info),
                   Text("About")
                 ]
               )),
               FlatButton(onPressed: ()=>null,
               child: Row(
                 children:<Widget>[
                   Icon(Icons.feedback),
                   Text("Feedback")
                 ]
               )),
               FlatButton(onPressed: ()=>exit(0),
               child: Row(
                 children:<Widget>[
                   Icon(Icons.exit_to_app),
                   Text("Exit")
                 ]
               )),])
           
        ),
    );
  }
}
