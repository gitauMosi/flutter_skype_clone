import 'package:flutter/material.dart';
import 'package:skype_app/constants/colors.dart';
import 'package:skype_app/features/search_page.dart';

Widget SearchBarWidget(BuildContext context){
  return Container(
    color: appBarColor,
   padding:  const EdgeInsets.only(top: 5),
    child:  Row(
      children: [
     Expanded(
       child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const SearchPage()));
        },
         child: Container(
          width: MediaQuery.of(context).size.width ,
          height: 30,
          padding: const EdgeInsets.all(3),
          margin: const EdgeInsets.all(7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color.fromARGB(255, 5, 4, 16)
          ),
          child: const Row(
            children: [
              Icon(Icons.search),
              Text("Search"),
            
            ],
          ),
         ),
       ),
     ),
     const SizedBox(width: 5,),
      TextButton(
        style: TextButton.styleFrom(
          minimumSize: const Size(40, 40),
          padding: const EdgeInsets.all(5),
          backgroundColor: const Color.fromARGB(255, 5, 4, 16),
          fixedSize: const Size(5, 10),
        ),
        onPressed: (){}, child: const Icon(Icons.menu_sharp, size: 15,)),
      const SizedBox(width: 5,),
    ],
    ),
  );
}