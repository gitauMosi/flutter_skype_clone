import 'package:flutter/material.dart';
import 'package:skype_app/features/chat_feature/chat_view.dart';

Widget ChatList(BuildContext context) {
  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatView()));
    },
    child: Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 1),
      height: 65,
      color: Colors.transparent,
      padding: const EdgeInsets.only(top: 3),
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 2, left: 5),
                child: boxprofileAvatar(),
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Mosi git (You)",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Icon(
                    Icons.verified,
                    size: 16,
                  )
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Text("Hy"),
            ],
          ),
          const Spacer(),
          const Column(
            children: [
              SizedBox(
                height: 3,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "16:00Am",
                    style: TextStyle(fontSize: 12),
                  ),
                  Icon(
                    Icons.pin_drop,
                    size: 15,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
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
