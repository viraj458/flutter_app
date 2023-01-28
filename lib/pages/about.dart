import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutArguments {
  final String name;
  AboutArguments({required this.name});
}

class About extends StatefulWidget {
  static const routeName = "/about";
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  int count = 0;

  void onIncrement() {
    setState(() {
      count++;
    });
  }

  void onDecrement() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    final AboutArguments args =
        ModalRoute.of(context)?.settings.arguments as AboutArguments;
    return Scaffold(
      appBar: AppBar(title: Text('About ${args.name}')),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
            ),
            Text(
              'About ${args.name}',
              style: Theme.of(context).textTheme.headline4,
            ),
            OutlinedButton(
              onPressed: onIncrement,
              child: Icon(Icons.add),
            ),
            Text(
              'The count is: $count',
              style: GoogleFonts.chilanka(fontSize: 20),
            ),
            OutlinedButton(
              onPressed: onDecrement,
              child: Icon(Icons.remove),
            ),
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop('From about');
                },
                child: const Text("Home"))
          ],
        ),
      ),
    );
  }
}
