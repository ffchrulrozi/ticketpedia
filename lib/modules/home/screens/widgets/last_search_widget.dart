import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:ticketpedia/utils/helper/divider_helper.dart';
import 'package:ticketpedia/utils/helper/style_helper.dart';

class LastSearchWidget extends StatelessWidget {
  const LastSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var lastSearches = <LastSearch>[
      LastSearch(
        from: "Jakarta",
        to: "Surabaya",
        use: "Sriwijaya",
        icon: FontAwesomeIcons.plane,
        at: DateTime.parse("2025-07-08"),
        price: 850000,
      ),
      LastSearch(
          from: "Surabaya",
          to: "Makassar",
          use: "Garuda",
          icon: FontAwesomeIcons.plane,
          at: DateTime.parse("2025-07-09"),
          price: 1000000),
      LastSearch(
        from: "Jakarta",
        to: "Surabaya",
        use: "Sriwijaya",
        icon: FontAwesomeIcons.plane,
        at: DateTime.parse("2025-07-08"),
        price: 850000,
      ),
    ];

    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                "Your last search",
                style: text(context).titleMedium!.copyWith(color: Colors.teal),
              ),
              Spacer(),
              Icon(
                FontAwesomeIcons.trash,
                color: Colors.red,
                size: 20,
              )
            ],
          ),
        ),
        v(1),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: lastSearches.length,
            itemBuilder: (context, index) => LastSearchBox(lastSearches[index]),
          ),
        ),
      ],
    );
  }
}

class LastSearchBox extends StatelessWidget {
  final LastSearch lastSearch;
  const LastSearchBox(this.lastSearch, {super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 5,
          margin: EdgeInsets.only(left: 20),
          child: Container(
            padding: EdgeInsets.only(top: 15, left: 25, right: 25),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(width: 30, color: Colors.blue),
                ),
                borderRadius: BorderRadius.circular(5)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      lastSearch.from,
                      style: text(context).bodyLarge,
                    ),
                    h(1),
                    Icon(FontAwesomeIcons.arrowRight, size: 12),
                    h(1),
                    Text(
                      lastSearch.to,
                      style: text(context).bodyLarge,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(lastSearch.icon, size: 16),
                    h(1),
                    Text(
                      lastSearch.use,
                      style: text(context).bodyMedium,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(FontAwesomeIcons.calendar, size: 16),
                    h(1),
                    Text(
                      DateFormat("dd MMM yyyy hh.mm").format(lastSearch.at),
                      style: text(context).bodyMedium,
                    ),
                  ],
                ),
                Text(
                  NumberFormat("Rp #,###", "id_ID").format(lastSearch.price),
                  style: text(context).bodyMedium,
                )
              ],
            ),
          ),
        ),
        Positioned(
            bottom: 6,
            right: 15,
            child: Text(
              "Continue to checkout",
              style: text(context).labelMedium!.copyWith(color: Colors.white),
            )),
      ],
    );
  }
}

class LastSearch {
  final IconData icon;
  final String use;
  final String from;
  final String to;
  final DateTime at;
  final int price;

  LastSearch({
    required this.icon,
    required this.use,
    required this.from,
    required this.to,
    required this.at,
    required this.price,
  });
}
