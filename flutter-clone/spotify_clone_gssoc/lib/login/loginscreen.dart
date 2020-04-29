import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone_gssoc/home/home.dart';

class login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _stateLogin();


}

class _stateLogin extends State<login>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
        children:[
    Scaffold(
      backgroundColor: Colors.transparent,
      body:Container(
        color:Colors.blueGrey[800],
        child: Stack(
          children: <Widget>[
            Positioned(
                top:400,
                child:Container(
                  margin: EdgeInsets.only(left: 30),
              child:Text("Get to enjoy unlimited playlists\nand music all over the world.", maxLines:3,
                style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold, fontSize: 24),)
            )),
            Positioned(
                top:500,
                child:Container(child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(margin:EdgeInsets.all(30), child:Text('Continue With',style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold, fontSize: 20) )
                ),
              RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                color:Colors.lightBlueAccent.withOpacity(0.9), onPressed: () {}, child: Container(
                margin: EdgeInsets.all(20),
                child:Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.phone, color: Colors.white,),
                  Container(margin:EdgeInsets.symmetric(horizontal: 10),child:Text('PHONE NUMBER', style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold, fontSize: 15),))
                ],
              ),))],
            )))
          ],
        ),



    )),
          Positioned(
              top:-60.0,
              left:-130.0,
              child:Container(
                width: 400,
                height: 330,
                decoration: BoxDecoration(
                    image: new DecorationImage(
                        colorFilter: ColorFilter.mode(Colors.blueGrey[800].withOpacity(0.5), BlendMode.dstATop),
                        image: AssetImage("assets/concert-signup.webp"), fit: BoxFit.fill),
                    shape:BoxShape.circle),
    ))

      
    ]);
  }


}