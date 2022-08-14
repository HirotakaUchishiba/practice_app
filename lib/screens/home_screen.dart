import 'package:flutter/material.dart';
import 'package:practice_app/screens/home/body.dart';

import '../constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body()
    );
  }
}