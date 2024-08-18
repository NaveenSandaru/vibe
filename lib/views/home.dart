import 'package:flutter/material.dart';
import 'package:vibe/consts/colors.dart';
import 'package:vibe/consts/textStyle.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("VIBE",style: ourStyle(
          family: "bold",
          size: 18,
          color: whiteColor
        ),),
      ),
      body: Container(),
    );
  }
}
