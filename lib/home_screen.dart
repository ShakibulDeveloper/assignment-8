import 'package:flutter/material.dart';
import 'package:assignment_8/home_screen_widgets.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: OrientationBuilder(
        builder: (context, constraints){
          if(constraints.name == 'portrait'){
            return portraitMode(context);
          }else{
            return landScapeMode(context);
          }
        },
      ),
    );
  }

}