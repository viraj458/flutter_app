import 'package:flutter/material.dart';
import 'package:flutter_app/pages/about.dart';

class Home extends StatelessWidget {
  static const routeName = "/home";
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            Image.asset(
              "assets/images/istockphoto-1266386917-612x612.jpg",
              scale: 5,
            ),
            Image.network(
              "https://images.unsplash.com/photo-1556761223-4c4282c73f77?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGFzdGF8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
              scale: 3,
            ),
            const Text(
              'ආයුබෝවන්!!!',
              style: TextStyle(fontSize: 40),
            ),
            const Text(
              'Hello',
              style: TextStyle(fontSize: 12),
            ),
            ElevatedButton(
                onPressed: () async {
                  String text = await Navigator.of(context).pushNamed(
                      About.routeName,
                      arguments: AboutArguments(name: "Devs")) as String;

                  print(text);
                },
                child: Row(
                  children: [
                    Icon(Icons.adb_rounded),
                    Text("About"),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
