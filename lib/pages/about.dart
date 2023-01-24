import 'package:flutter/material.dart';

class AboutArguments {
  final String name;
  AboutArguments({required this.name});
}

class About extends StatelessWidget {
  static const routeName = "/about";
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    final AboutArguments args =
        ModalRoute.of(context)?.settings.arguments as AboutArguments;
    return Scaffold(
      appBar: AppBar(title: Text('About ${args.name}')),
      body: Container(
        child: Column(
          children: [
            Text(
              'About ${args.name}',
              style: Theme.of(context).textTheme.headline4,
            ),
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop('From about');
                },
                child: Text("Home"))
          ],
        ),
      ),
    );
  }
}
