import 'package:flutter/material.dart';
import 'package:skype_app/constants/colors.dart';
import 'package:skype_app/features/call_feature/call_page.dart';
import 'package:skype_app/features/chat_feature/chat_body.dart';
import 'package:skype_app/features/chat_feature/new_chat.dart';
import 'package:skype_app/features/contacts_feature/contact_page.dart';
import 'package:skype_app/features/phone_feature/phone_page.dart';
import 'package:skype_app/features/today_feature/today_page.dart';
import 'package:skype_app/widgets/custom_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int itemSelectedIndex = 0;
  List<Widget> pages = [
    const ChatBody(),
    const CallPage(),
    const PhonePage(),
    const ContactPage(),
    const TodayPage()
  ];
  void onItemSelected(int value) {
    setState(() {
      itemSelectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      body: pages.elementAt(itemSelectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: navbarColor,
          onTap: onItemSelected,
          currentIndex: itemSelectedIndex,
          selectedItemColor: navOnSelectedItemColor,
          unselectedItemColor: navItemColor,
          elevation: 0,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          iconSize: 22,
          items: [
            custombtmNavItem("Chats", Icons.chat_rounded),
            custombtmNavItem("Calls", Icons.videocam),
            custombtmNavItem("Phones", Icons.dialpad_outlined),
            custombtmNavItem("Contacts", Icons.contact_page_outlined),
            custombtmNavItem("Today", Icons.cancel_presentation_outlined),
          ]),
          
        floatingActionButton: floatingActionButtonVisibity(),
         
      
    );
  }

  BottomNavigationBarItem custombtmNavItem(String label, IconData icon) {
    return BottomNavigationBarItem(label: label, icon: Icon(icon));
  }
   Widget?  floatingActionButtonVisibity(){
     if(itemSelectedIndex == 4){
        return null;
    }else {
      return   FloatingActionButton(
            
        onPressed: () {
          //navigate to new
          //use switch
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const NewChatPage()));
        },
        backgroundColor: Colors.blue,
        shape: const CircleBorder(),
        child: floatingActionButtonChild(),
      );
    }
   }
  Widget floatingActionButtonChild() {
    if (itemSelectedIndex == 0) {
      return const Icon(
        Icons.note_alt_outlined,
      );
    } else if (itemSelectedIndex == 1) {
      return const Icon(
        Icons.contact_phone,
      );
    } else if (itemSelectedIndex == 2) {
      return const Icon(
        Icons.dialpad_rounded,
      );
    } else if (itemSelectedIndex == 3) {
      return const Icon(
        Icons.contact_phone,
      );
    } else {
      return const Icon(Icons.close);
    }
  }
}
