import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const DrawerApp());
}
class DrawerApp extends StatelessWidget {
  const DrawerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

