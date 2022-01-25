import 'package:first_flutter_projects/main.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Catelog Add"),),
     body: Center(
       child: Container(
         child: Text("Welcome To flutter"),
       ),
     ),
     drawer: const Drawer(),
   );

  }
  
}