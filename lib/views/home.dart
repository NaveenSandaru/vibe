import 'package:flutter/material.dart';
import 'package:vibe/consts/colors.dart';
import 'package:vibe/consts/textStyle.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgDarkColor,
        appBar: AppBar(
          backgroundColor: bgDarkColor,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, color: whiteColor),
            )
          ],
          leading: Icon(Icons.sort_rounded, color: whiteColor),
          title: Text(
            "Vibe",
            style: ourStyle(family: "bold", size: 18, color: whiteColor),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 100,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    margin: EdgeInsets.only(bottom: 4),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      tileColor: bgColor,
                      title: Text(
                        "Music Name",
                        style: ourStyle(
                          family: "bold",
                          size: 15,
                        ),
                      ),
                      subtitle: Text(
                        "Artist Name",
                        style: ourStyle(
                          family: "regular",
                          size: 12,
                        ),
                      ),
                      leading: const Icon(Icons.music_note,
                          color: whiteColor, size: 32),
                      trailing: const Icon(Icons.play_arrow,
                          color: whiteColor, size: 26),
                    ));
              }),
        ));
  }
}
