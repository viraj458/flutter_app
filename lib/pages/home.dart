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
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            const Text(
              'Helloww',
              style: TextStyle(fontSize: 24),
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
                child: const Text("About"))
          ],
        ),
      ),
    );
  }
}
