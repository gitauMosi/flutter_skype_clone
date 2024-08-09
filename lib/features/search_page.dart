import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
        centerTitle: false,
      ),
      body: Container(
        color: Colors.transparent,
        child:  const Column(
          children: [
            SearchBar(
              leading:  Icon(Icons.search),
              hintText: "Search",
            )
          ],
        ),
      ),
    );
  }
}