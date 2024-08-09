import 'dart:math';

import 'package:flutter/material.dart';
import 'package:skype_app/models/message.dart';
import 'package:skype_app/widgets/custom_appbar.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  String? text;
  TextEditingController? _controller;
  final List<String> avatars = [];
  final List<Message> messages = [
    Message(id: 0, message: "i suppose i am"),
    Message(id: 1, message: "I am good too"),
    Message(id: 0, message: "i suppose i am"),
    Message(id: 1, message: "I am good too"),
    Message(id: 0, message: "i suppose i am"),
    Message(id: 1, message: "I am good too"),
  ];

  final rand = Random();

  @override
  void initState() {
    super.initState();
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: chatAppBar(),
      body: Column(
        children: [
          Expanded(
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    Message m = messages[index];
                    if (m.id == 0) return _buildMessageRow(m, current: true);
                    return _buildMessageRow(m, current: false);
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 10.0,
                    );
                  },
                  reverse: true,
                  itemCount: messages.length)),
          _buildBottomBar(context),
        ],
      ),
    );
  }

  Container _buildBottomBar(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: BoxDecoration(
        //color: Colors.grey.shade200,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(30.0),
      ),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
      child: Row(
        children: [
          Expanded(
              child: TextField(
            textInputAction: TextInputAction.send,
            controller: _controller,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                hintText: "Aa",
                hintStyle: const TextStyle(color: Colors.grey)),
            onEditingComplete: _save,
          )),
          const SizedBox(
            width: 5,
          ),
          IconButton(
            onPressed: _save,
            icon: const Icon(
              Icons.send,
              color: Colors.white,
            ),
            color: Theme.of(context).primaryColor,
          )
        ],
      ),
    );
  }

  _save() async {
    if (_controller!.text.isEmpty) return;
    FocusScope.of(context).requestFocus(FocusNode());
    setState(() {
      messages.insert(
          0, Message(id: rand.nextInt(2), message: _controller!.text));
      _controller!.clear();
    });
  }

  Row _buildMessageRow(Message message, {required bool current}) {
    return Row(
      mainAxisAlignment:
          current ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment:
          current ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: current ? 30.0 : 20.0,
        ),
        if (!current) ...[
          const CircleAvatar(
            radius: 15.0,
            child: Text("T"),
          ),
          const SizedBox(
            width: 15.0,
          )
        ],

        //chat bubles
        Container(
          padding: const EdgeInsets.only(
            bottom: 5,
            right: 5,
          ),
          child: Column(
            crossAxisAlignment:
                current ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Container(
                  constraints: BoxConstraints(
                    minHeight: 40,
                    maxHeight: 250,
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                    minWidth: MediaQuery.of(context).size.width * 0.1,
                  ),
                  decoration: BoxDecoration(
                    color: current ? const Color.fromARGB(255, 72, 133, 204) : Colors.white,
                    borderRadius: current
                        ? const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          )
                        : const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15, top: 10, bottom: 5, right: 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: current
                            ? CrossAxisAlignment.end
                            : CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text(
                              message.message,
                              style: TextStyle(
                                color: current ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.done_all,
                            color: Colors.white,
                            size: 14,
                          )
                        ],
                      ))
                  //>>>>>>>>
                  ),
              const SizedBox(
                height: 2,
              ),
              Text(
                "2.02",
                style: TextStyle(
                    fontSize: 12, color: Colors.black.withOpacity(0.5)),
              )
            ],
          ),
        ),
        if (current) ...[
          const SizedBox(
            width: 5,
          ),
          const CircleAvatar(
            radius: 15.0,
            child: Center(
              child: Text("M"),
            ),
          )
        ],
        SizedBox(
          width: current ? 20.0 : 30.0,
        ),
      ],
    );
  }
}

AppBar chatAppBar() {
  return AppBar(
    title: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 3, bottom: 3),
          child: customCircleAvatar(),
        ),
        const SizedBox(
          width: 3,
        ),
        const Text(
          "Mosi Git (you)",
          style: TextStyle(fontSize: 18),
        ),
      ],
    ),
    centerTitle: false,
  );
}

Widget customButton() {
  return Container(
    width: 25,
    height: 25,
    decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
    child: const Center(
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
    ),
  );
}
