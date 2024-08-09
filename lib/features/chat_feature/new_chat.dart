import 'package:flutter/material.dart';

class NewChatPage extends StatelessWidget {
  const NewChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("New Chat"),

      ),
      body: Container(
        color: Colors.transparent,
        child: Column(
          children: [
            const SearchBar(
              leading: Icon(Icons.search),
              
              hintText: "Search",
            ),
             const Divider(),
              const SizedBox(height: 5,),
              customTile("Meet Now", Icons.videocam_outlined),
              customTile("New Group Chat", Icons.people),
              customTile("New call", Icons.phone),
              customTile("New Moderated chat", Icons.people_alt_outlined),
              const Divider(),
              customTile("New Private Conversation", Icons.lock),
              customTile("New SMS", Icons.sms),
          ],
        ),
      ),
    );
  }
    Widget customTile(String label, IconData icon){
    return ListTile(
      leading: Icon(icon, size: 15,),
      title: Text(label),
    );
  }

}