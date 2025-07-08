import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ticketpedia/utils/helper/divider_helper.dart';
import 'package:ticketpedia/utils/helper/style_helper.dart';

class FeatureWidget extends StatelessWidget {
  const FeatureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(children: [
            FeatureBox(
              label: "Plane",
              icon: FontAwesomeIcons.plane,
              color: Colors.blue,
            ),
            FeatureBox(
              label: "Train",
              icon: FontAwesomeIcons.train,
              color: Colors.green,
            ),
            FeatureBox(
              label: "Ship",
              icon: FontAwesomeIcons.ship,
              color: Colors.orange,
            ),
            FeatureBox(
              label: "Bus",
              icon: FontAwesomeIcons.bus,
              color: Colors.blueGrey,
            ),
            FeatureBox(
              label: "Travel",
              icon: FontAwesomeIcons.caravan,
              color: Colors.purple,
            ),
          ]),
          v(2),
          Row(
            children: [
              FeatureBox(
                label: "Inn",
                icon: FontAwesomeIcons.hotel,
                color: Colors.teal,
              ),
              FeatureBox(
                label: "Car Rent",
                icon: FontAwesomeIcons.car,
                color: Colors.purpleAccent,
              ),
              FeatureBox(
                label: "Sport",
                icon: FontAwesomeIcons.football,
                color: Colors.red,
              ),
              FeatureBox(
                label: "Concert",
                icon: FontAwesomeIcons.star,
                color: Colors.cyan,
              ),
              FeatureBox(
                label: "Cinema",
                icon: FontAwesomeIcons.film,
                color: Colors.indigoAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FeatureBox extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  final String? path;
  const FeatureBox(
      {required this.label,
      required this.icon,
      required this.color,
      this.path,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Icon(
            icon,
            color: color,
          ),
          Text(
            label,
            style: text(context).labelLarge!.copyWith(color: color),
          )
        ],
      ),
    );
  }
}
