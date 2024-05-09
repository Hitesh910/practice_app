
import 'package:flutter/material.dart';
import 'package:practice_app2/screen/contact/contact_screen.dart';
import 'package:practice_app2/screen/home/home_screen.dart';
import 'package:practice_app2/screen/technical/technical.dart';

Map<String,WidgetBuilder> app_routes = {
  "/":(context) => const HomeScreen(),
  "contact":(context) => ContactScreen(),
  "technical":(context) => const TechnicalScreen(),
};