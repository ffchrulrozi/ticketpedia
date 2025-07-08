import 'package:flutter/material.dart';
import 'package:ticketpedia/utils/helper/divider_helper.dart';
import 'package:ticketpedia/utils/helper/style_helper.dart';

class ChooseDestinationWidget extends StatelessWidget {
  const ChooseDestinationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var lastDestinations = ["Jakarta", "Yogyakarta", "Padang", "Ternate"];

    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Choose your destination",
            style: text(context).titleLarge,
          ),
          Divider(),
          v(2),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Search...",
              border: OutlineInputBorder(),
            ),
          ),
          v(2),
          Wrap(
            spacing: 15,
            runSpacing: 15,
            children: lastDestinations
                .map(
                  (lastDestination) => InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(10, 0, 0, 0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      child: Text(lastDestination),
                    ),
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
