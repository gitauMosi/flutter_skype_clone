import 'package:flutter/material.dart';
import 'package:skype_app/widgets/chat_list.dart';
import 'package:skype_app/widgets/pop_up_widget.dart';
import 'package:skype_app/widgets/search_bar_widget.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});

  

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.transparent,
      width: double.infinity,
      height: double.infinity,
      //padding: const EdgeInsets.all(3),
      child: Column(
        children: [
         SearchBarWidget(context),
         popUp1(),
          const Divider(),
          ChatList(context),
          ChatList(context),
        ],
      ),
    );
  }
}