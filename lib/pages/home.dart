import 'package:flutter/material.dart';
import 'package:flutter_web/pages/containers/container1.dart';
import 'package:flutter_web/pages/containers/container2.dart';
import 'package:flutter_web/widgets/navbar.dart';

import '../utils/constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        
        child: Container(
          child: const Column(
            children: [
              NavBar(),
              Container1(),
              Container2(),
            ],
          ),
        )),
    );
  }
}