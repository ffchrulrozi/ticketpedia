import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:ticketpedia/assets/assets.gen.dart';
import 'package:ticketpedia/modules/plane/screens/widgets/choose_date_widget.dart';
import 'package:ticketpedia/modules/plane/screens/widgets/choose_destination_widget.dart';
import 'package:ticketpedia/modules/plane/screens/widgets/choose_person_widget.dart';
import 'package:ticketpedia/modules/plane/screens/widgets/your_last_search_widget.dart';
import 'package:ticketpedia/utils/ext/size_ext.dart';
import 'package:ticketpedia/utils/helper/divider_helper.dart';

class PlaneScreen extends StatelessWidget {
  const PlaneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void showBottomModal(String target) {
      showModalBottomSheet(
        context: context,
        builder: (context) {
          switch (target) {
            case "from" || "to":
              return ChooseDestinationWidget();
            case "date":
              return ChooseDateWidget();
            case "person":
              return ChoosePersonWidget();
            default:
              return Container();
          }
        },
      );
    }

    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            Assets.lib.assets.img.planeBg.path,
            width: 100.h(context),
            height: 200,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(20, 0, 0, 0),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () => showBottomModal("from"),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.planeDeparture,
                              color: Color.fromARGB(128, 0, 0, 0),
                            ),
                            h(2),
                            Text("From")
                          ],
                        ),
                      ),
                      Divider(),
                      InkWell(
                        onTap: () => showBottomModal("to"),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.planeArrival,
                              color: Color.fromARGB(128, 0, 0, 0),
                            ),
                            h(2),
                            Text("To")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                v(1.5),
                InkWell(
                  onTap: () => showBottomModal("date"),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(20, 0, 0, 0),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.calendar,
                              color: Color.fromARGB(128, 0, 0, 0),
                            ),
                            h(2),
                            Text(
                              DateFormat("dd MMM yyyy")
                                  .format(DateTime.parse("2025-08-09")),
                            ),
                            Spacer(),
                            Text("Round trip?"),
                            Checkbox(
                              value: true,
                              onChanged: (value) => (),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              visualDensity: VisualDensity.compact,
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.calendar,
                              color: Color.fromARGB(128, 0, 0, 0),
                            ),
                            h(2),
                            Text(
                              DateFormat("dd MMM yyyy")
                                  .format(DateTime.parse("2025-08-09")),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                v(1.5),
                InkWell(
                  onTap: () => showBottomModal("person"),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(20, 0, 0, 0),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.person,
                              color: Color.fromARGB(128, 0, 0, 0),
                            ),
                            h(2),
                            Text("1 Passenger, Economy")
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          v(2),
          YourLastSearchWidget()
        ],
      ),
    );
  }
}
