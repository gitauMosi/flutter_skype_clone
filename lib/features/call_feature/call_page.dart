import 'package:flutter/material.dart';
import 'package:skype_app/widgets/custom_appbar.dart';
import 'package:skype_app/widgets/search_bar_widget.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          SearchBarWidget(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.only(left: 30, top: 14, bottom: 14, right: 30),
                 decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadiusDirectional.circular(12),
                 ),
                 child: const Center(
                  child: Column(
                    children: [
                      Icon(Icons.videocam),
                      Text("Start a call", style: TextStyle(fontSize: 12),)
                    ],
                  ),
                ),
             ),

              Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.only(left: 30, top: 14, bottom: 14, right: 30),
                 decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 47, 45, 45),
                  borderRadius: BorderRadiusDirectional.circular(12,),
                 ),
                 child: const Center(
                  child: Column(
                    children: [
                      Icon(Icons.link, color: Colors.blue, ),

                      Text("Start a call", style: TextStyle(fontSize: 12),)
                    ],
                  ),
                ),
             )
            ],
          ),
          const Text("People"),
          callListTile(),
           callListTile(),
        ],
      ),
    );
  }

  Widget callListTile(){
    return ListTile(
      leading: customCircleAvatar(),
      title:  const Text("Jimmy j"),
      trailing: const Icon(Icons.call),
    );
  }
}