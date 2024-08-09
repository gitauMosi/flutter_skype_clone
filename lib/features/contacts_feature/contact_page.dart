import 'package:flutter/material.dart';
import 'package:skype_app/widgets/search_bar_widget.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.transparent,
        child: Column(
          children: [
            SearchBarWidget(context),
            contactsListTile(),
            contactsListTile(),
            contactsListTile(),
            contactsListTile()
          ],
        ),
      ),
    );
  }

  Widget contactsListTile() {
    return Container(
      padding: const EdgeInsets.only(bottom: 5),
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const Padding(
           padding:  EdgeInsets.all(8.0),
           child:  Text("A"),
         ),
          ListTile(
            leading: boxprofileAvatar(),
            title: const Text("Terry"),
          )
        ],
      ),
    );
  }

  Widget boxprofileAvatar() {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadiusDirectional.circular(12)),
      child: const Center(
          child: Text(
        "A",
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
    );
  }
}
