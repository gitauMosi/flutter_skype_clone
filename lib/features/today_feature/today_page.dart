import 'package:flutter/material.dart';
import 'package:skype_app/widgets/custom_appbar.dart';

class TodayPage extends StatelessWidget {
  const TodayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index){
          return postCard();
        },
      ),
    );
  }

  Widget postCard(){
    return Container(
      padding: const EdgeInsets.only(top: 3),
      color: Colors.black,
      child: Column(
        children: [
           Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        customCircleAvatar(),
                        const SizedBox(width: 3,),
                        const Text("Nicki Swift (vedios)", style: TextStyle(fontSize: 11)),
                        const SizedBox(width: 4,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: const Color.fromARGB(255, 58, 58, 58)
                          ),
                          child: const Padding(
                            padding:  EdgeInsets.all(2.0),
                            child: Text(" + Follow ", style: TextStyle(fontSize: 11)),
                          ),
                        )
                      ],
                    ),
                    //Text("data")
                    // Title
                   const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Text("USA GYmnastics' Paris Olympics Uniforms Are Turning Heads"),
                    )
                  ],
                ),
              ),
              //image
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: boxprofileAvatar2(),
              ),
            ],
           ),
          //like buttons
          const SizedBox(height: 10,),
          Row(
            children: [
               Container(
                padding: const EdgeInsets.only(left: 4),
                color: Colors.transparent,
                width: 100,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.thumb_up, size: 16,),
                    Text("129", style: TextStyle(fontSize: 12),),
                    SizedBox(width: 3,),
                    Icon(Icons.thumb_down, size: 16),
                    SizedBox(width: 3,),
                    Icon(Icons.screen_share_outlined, size: 16)
                  ],
                ),
               ),
             const  Spacer(),
             const Padding(
                padding: EdgeInsets.all(8.0),
                child:  Icon(Icons.more_vert, size: 16,),
              )
            ],
          ),
          const SizedBox(height: 4,),
          const Divider(),
          const SizedBox(height: 4,)
        ],
      ),
    );
  }

Widget boxprofileAvatar2() {
  return Container(
    height: 70,
    width: 70,
    decoration: BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadiusDirectional.circular(12)),
    child: const Center(
        child: Text(
      "Image",
      style: TextStyle(fontWeight: FontWeight.bold),
    )),
  );
}
}