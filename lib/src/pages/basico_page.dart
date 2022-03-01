import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  //const BasicoPage({ Key? key }) : super(key: key);
  final estiloTitulo=TextStyle(fontSize:20.0, fontWeight:FontWeight.bold);
  final estiloSubTitulo=TextStyle(fontSize:18.0, color:Colors.grey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: <Widget>[
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
           
        ],
      ),
      );
  }
  Widget _crearImagen(){
    return Image(
            image:NetworkImage('https://wallpapercave.com/wp/wp3370243.jpg')
            );

  }
  Widget _crearTitulo(){
    return  Container(
              padding: EdgeInsets.symmetric(horizontal:30.0, vertical:20.0),
              child: Row(
                children:<Widget> [

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget> [
                  Text('Lago con flores de lavanda',style:estiloTitulo),
                  SizedBox( height: 7.0),
                  Text('Un lago en Alemania', style:estiloSubTitulo),
                      ],
                    ),
              ),
      Icon(Icons.star, color:Colors.red,size:30.0),

      Text('41', style:TextStyle(fontSize: 20.0) )
        ],
              ),
            );
  }
  Widget _crearAcciones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[

        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share,  'SHARE'),
      ],
      );
  }
  Widget _accion(IconData icon,String texto){
return Column(
          children:<Widget>[
            Icon(icon,color:Colors.blue, size:35.0),
            SizedBox( height:5.0),
            Text(texto,style:TextStyle(fontSize: 15.0, color:Colors.blue),)
          ]
        );
  }
  Widget _crearTexto(){
    return Container(
      padding:EdgeInsets.symmetric(horizontal:40.0, vertical:20.0),
      child: Text(
      'Suspendisse interdum tincidunt lacus, non consectetur eros scelerisque vel. Aliquam purus ex, laoreet eget sem quis, viverra sollicitudin felis. Praesent quis tellus at quam malesuada vulputate. Curabitur efficitur urna vel tempor molestie. Quisque varius ac velit id convallis. Mauris tempor eget quam ac sodales. Sed eu blandit mauris. Mauris pretium felis eu elit faucibus iaculis sit amet non ipsum. Sed id ex sed risus vulputate pellentesque et nec velit. Mauris porttitor a odio ac suscipit. Nullam a imperdiet odio, nec commodo purus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras euismod leo nunc, ut porttitor est interdum nec. Donec tincidunt iaculis eros ac vestibulum.',
      textAlign: TextAlign.justify,
  

      ),
    );
  }
}