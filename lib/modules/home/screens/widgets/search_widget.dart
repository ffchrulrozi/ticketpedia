import 'package:flutter/material.dart';
import 'package:ticketpedia/assets/assets.gen.dart';
import 'package:ticketpedia/utils/ext/size_ext.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        Assets.lib.assets.img.searchBg.path,
        height: 175,
        width: 100.w(context),
        fit: BoxFit.cover,
      ),
      Positioned(
        bottom: 30,
        right: 0,
        left: 0,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 50),
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search...",
            ),
          ),
        ),
      ),
    ]);
  }
}
