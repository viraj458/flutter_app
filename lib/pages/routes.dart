import 'package:flutter/material.dart';
import 'package:flutter_app/pages/about.dart';
import 'package:flutter_app/pages/home.dart';

final Map<String, WidgetBuilder> routes = {
  Home.routeName:(_) => const Home(),
  About.routeName:(_) => const About(),
};