import 'package:flutter/material.dart';
import 'package:skype_app/widgets/custom_appbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.transparent,
          child: Column(
            children: [
              const Divider(),
              Container(
               child: Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 8,),
                      customCircleAvatar(),
                     const Padding(
                        padding:  EdgeInsets.all(8.0),
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("mosi git", style: TextStyle(fontSize: 13),),
                            Text("mosi@gmail.com", style: TextStyle(fontSize: 10),),
                            SizedBox(height: 10,),
                            Text("My Microsoft account", style: TextStyle(color: Colors.blue, fontSize: 10),)
                          ],
                        ),
                      ),
                      const Spacer(),
                     Container(
                      margin: const EdgeInsets.only(right: 15),
                      padding: const EdgeInsets.all(5),
                      decoration:const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 39, 44, 47)
                      ),
                      child: const Icon(Icons.qr_code))
                    ],
                  ),
                  //active footer
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                        Container(
                          color: Colors.transparent,
                          width: 100,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.circle, color: Color.fromARGB(245, 5, 231, 12),),
                              Text("Active", style: TextStyle(fontSize: 12),)
                            ],
                          ),
                        ),
                        const Spacer(),
                        //drop down
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(Icons.keyboard_arrow_down),
                        )
                    ],
                  )
                ],
               ), 
              ),
              const Divider(),
              customTile("Share what your up to", Icons.notification_add),
              const SizedBox(height: 5,),
              customTile("Invite friends", Icons.people),
              customTile("Skype profile", Icons.person_2_outlined),
              customTile("Skype number", Icons.phone),
              const Divider(),
              customTile("Book marks", Icons.bookmark),
              customTile("Settings", Icons.settings),
            ],
          ),
        ),
      )
    );
  }

  Widget customTile(String label, IconData icon){
    return ListTile(
      leading: Icon(icon, size: 15,),
      title: Text(label),
    );
  }
}