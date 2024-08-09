import 'package:flutter/material.dart';
import 'package:skype_app/constants/colors.dart';
import 'package:skype_app/constants/style.dart';
import 'package:skype_app/features/profile.dart';

AppBar customAppBar(BuildContext context){
  return AppBar(
    backgroundColor: appBarColor,
    elevation: 0,
    leading: customCircleAvatar(),
    title: InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage()));
      },
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children: [
          Text("Mosi Git", style: textStyleBold,),
          Text("Share what you're up to", style: textStyleSmall,)
         ],
      ),
    ),
    actions: const[
      Icon(Icons.video_call_outlined, color: Colors.blue,),
      SizedBox(width: 4,),
      Icon(Icons.notifications, color: Colors.blue,),
    ],
    centerTitle: false,
    
  );
}

Widget customCircleAvatar(){
  return Container(

    padding: const EdgeInsets.all(0),
    width: 25,
    height: 25,
    margin: const EdgeInsets.only(left: 5, top: 7, bottom: 7),
    decoration:  const BoxDecoration(
     color:  Color.fromARGB(255, 223, 223, 223),
     shape: BoxShape.circle
    ),
    
    child: const Center(child: Text('MG', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),),),
  );
}


