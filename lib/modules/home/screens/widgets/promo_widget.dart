import 'package:flutter/material.dart';
import 'package:ticketpedia/assets/assets.gen.dart';
import 'package:ticketpedia/utils/helper/divider_helper.dart';
import 'package:ticketpedia/utils/helper/style_helper.dart';

class PromoWidget extends StatelessWidget {
  const PromoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var images = [
      Assets.lib.assets.img.promo1.path,
      Assets.lib.assets.img.promo2.path
    ];

    return Column(children: [
      Container(
        color: Colors.teal,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(children: [
          Icon(Icons.discount_outlined, color: Colors.white),
          h(1),
          Text(
            "Don't miss up. Check promos every day!",
            style: text(context).labelLarge!.copyWith(color: Colors.white),
          ),
        ]),
      ),
      Container(
        height: 220,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.lib.assets.img.promoBg.path),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 25),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          itemBuilder: (context, index) => PromoBox(
            index: index,
            img: images[index],
          ),
        ),
      ),
    ]);
  }
}

class PromoBox extends StatelessWidget {
  final int index;
  final String img;
  const PromoBox({required this.index, required this.img, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: index == 0 ? 20 : 0, right: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.asset(
          img,
          width: 300,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
