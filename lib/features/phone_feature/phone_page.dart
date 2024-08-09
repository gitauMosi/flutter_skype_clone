import 'package:flutter/material.dart';
import 'package:skype_app/widgets/search_bar_widget.dart';

class PhonePage extends StatelessWidget {
  const PhonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          color: Colors.transparent,
          child: Column(
            children: [
              SearchBarWidget(context),
              Container(
                padding: const EdgeInsets.all(8),
                width: double.maxFinite,
                margin: const EdgeInsets.only(top: 8, left: 6, right: 6, bottom: 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    border: Border.all(color: Colors.blue, width: 2.0)),
                height: 40,
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.money,
                      size: 14,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Credit balance: \$0.00",
                      style: TextStyle(fontSize: 12),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Icon(
                        Icons.more_vert_outlined,
                        size: 18,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.only(
                          left: 5, top: 14, bottom: 14, right: 10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 243, 33, 229),
                        borderRadius: BorderRadiusDirectional.circular(12),
                      ),
                      child: const Center(
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("International calls", style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),),
                                Text("Subscriptions", style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),),
                                Text(
                                  "Start a call",
                                  style: TextStyle(fontSize: 9),
                                )
                              ],
                            ),
                            SizedBox(width: 5,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.circle_sharp, color: Colors.grey,),
                                
                              ],
                            )
                          ],
                        ),
                                  
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.only(
                          left: 5, top: 14, bottom: 14, right: 10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 58, 49, 227),
                        borderRadius: BorderRadiusDirectional.circular(12),
                      ),
                      child: const Center(
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("International calls", style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),),
                                Text("Subscriptions", style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),),
                                Text(
                                  "Start a call",
                                  style: TextStyle(fontSize: 9),
                                )
                              ],
                            ),
                            SizedBox(width: 5,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.circle_sharp, color: Colors.grey,),
                                
                              ],
                            )
                          ],
                        ),
                    
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                  child: const Icon(
                    Icons.call,
                     color: Colors.green,
                      size: 100,)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
