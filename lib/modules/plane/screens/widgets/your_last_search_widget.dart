import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:ticketpedia/utils/helper/divider_helper.dart';
import 'package:ticketpedia/utils/helper/style_helper.dart';

class YourLastSearchWidget extends StatelessWidget {
  const YourLastSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var lastSearches = <YourLastSearch>[
      YourLastSearch(from: "Padang", dateFrom: DateTime.parse("2025-07-09")),
      YourLastSearch(from: "Jakarta", dateFrom: DateTime.parse("2025-07-10")),
      YourLastSearch(from: "Makassar", dateFrom: DateTime.parse("2025-07-11")),
      YourLastSearch(from: "Ternate", dateFrom: DateTime.parse("2025-07-12")),
    ];

    return Column(
      children: [
        Padding(
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
          height: 125,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: lastSearches.length,
            itemBuilder: (context, index) {
              var lastSearch = lastSearches[index];
              return Card(
                color: Colors.white,
                elevation: 3,
                margin: EdgeInsets.only(
                  left: index == 0 ? 20 : 0,
                  right: 20,
                  bottom: 10,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            lastSearch.from,
                            style: text(context).bodyLarge,
                          )
                        ],
                      ),
                      v(1),
                      Row(
                        children: [
                          Icon(FontAwesomeIcons.calendar, size: 18),
                          h(1),
                          Text(DateFormat("dd MMM yy")
                              .format(lastSearch.dateFrom))
                        ],
                      ),
                      v(0.5),
                      Row(
                        children: [
                          Icon(FontAwesomeIcons.person, size: 18),
                          h(1),
                          Text("2 Adult, Economy")
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class YourLastSearch {
  final String from;
  final String? to;
  final DateTime dateFrom;
  final DateTime? dateTo;

  YourLastSearch({
    required this.from,
    this.to,
    required this.dateFrom,
    this.dateTo,
  });
}
