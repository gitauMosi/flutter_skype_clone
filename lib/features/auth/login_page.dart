import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Color.fromARGB(255, 12, 103, 33),
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.qr_code),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.more_horiz_rounded),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Welcome to Skype",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
              const Text("By continuing you agree t the Terms of use and privaacy statement", style: TextStyle(fontSize: 11),),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Skype name, email or phone"
                ),
              ),
          
              ElevatedButton(
                onPressed: (){}, 
                child: const Text("Next", style: TextStyle(fontWeight: FontWeight.bold),)),
                GestureDetector(
                  onTap: (){},
                  child: const Text("No account? Create one"))
            ],
          ),
        ),
      ),
    );
  }
}