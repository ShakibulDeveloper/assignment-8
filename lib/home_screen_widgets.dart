import 'package:flutter/material.dart';

//=====CIRCLE_AVATAR=====
CircleAvatar profileCircleAvatar(){
  return CircleAvatar(
    radius: 100,
    backgroundImage: NetworkImage("https://images.unsplash.com/photo-1614650084449-ddb2c98de528?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE5fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60"),
  );
}

//=====PROFILE_ORIENTATION_BUILDER=====
GridView profileOrientationBuilder(context){
  return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 3,
        crossAxisSpacing: 3,
      ),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 6,
      itemBuilder:(context, index){
        return Image.network("https://images.unsplash.com/photo-1614650084449-ddb2c98de528?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE5fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60", fit: BoxFit.cover,);
      }
  );
}

//====HOME_SCREEN_UI_PORTRAIT_MODE======
Padding portraitMode(context){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(height: 5),
          Center(
            child: profileCircleAvatar(),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text("John Doe", style: Theme.of(context).textTheme.bodyLarge,),
          ),
          Wrap(
            children: [
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.", style: Theme.of(context).textTheme.bodySmall,)
            ],
          ),

          SizedBox(height: 8),
          profileOrientationBuilder(context)
        ],
      ),
    ),
  );
}

//====HOME_SCREEN_UI_LANDSCAPE_MODE======
SingleChildScrollView landScapeMode(context){
  return SingleChildScrollView(
    child: Row(
      children: [
        Expanded(
          child: profileCircleAvatar(),
        ),
        Expanded(
            child: Column(
              children: [
                Wrap(
                  children: [
                    Text("Jhon Deo", style: Theme.of(context).textTheme.bodyLarge,),
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.", style: Theme.of(context).textTheme.bodySmall,)
                  ],
                ),
                SizedBox(height: 8),
                profileOrientationBuilder(context),
              ],
            )
        ),
      ],
    ),
  );
}