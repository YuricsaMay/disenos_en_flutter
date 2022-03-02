import 'package:flutter/material.dart';
import 'dart:math';
class BotonesPage extends StatelessWidget {
  //const BotonesPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children:<Widget>[
          _fondoApp(),

          SingleChildScrollView(
            child:Column(
              children: <Widget>[
                _titulos(),

            ],
            ),
          )
        ],
      )
    );
  }
  Widget _fondoApp(){
    final grandiente=Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0,0.6),
          end: FractionalOffset(0.0,0.1),
          colors:[
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),

          ]
        )
      ),
    );
    final cajaRosa= Transform.rotate(
      angle:pi/5.0,
      child:Container(
      height: 360.0,
      width: 360.0,
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(80.0),
        gradient:LinearGradient(
          colors:[
            Color.fromRGBO(236, 98, 188, 1.0),
            Color.fromRGBO(241, 142, 172, 1.0)
          ] 
          )
      ),
    )
    );
    return Stack(
      children:<Widget>[
        grandiente,
        Positioned(
          top:-100.0,
          child:cajaRosa
        )
      ],
    );
  }
Widget _titulos(){
  return SafeArea(
    child:Container(
      padding:EdgeInsets.all(20.0),
    child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Classify transaction',style:TextStyle(color:Colors.white, fontSize: 30.0,fontWeight: FontWeight.bold)),
        SizedBox(height: 10.0),
        Text('Classify this transaction into a paricular category',style:TextStyle(color:Colors.white, fontSize: 18.0)),
    ],
    ),
    ),
  );
}
}