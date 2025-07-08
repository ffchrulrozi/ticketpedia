import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ticketpedia/utils/helper/divider_helper.dart';
import 'package:ticketpedia/utils/helper/style_helper.dart';

class ChoosePersonWidget extends StatelessWidget {
  const ChoosePersonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Set passenger",
            style: text(context).titleLarge,
          ),
          Divider(),
          v(2),
          Text(
            "Age",
            style: text(context).titleMedium,
          ),
          v(1),
          AgeBox("adult", "Adult (>12)"),
          AgeBox("child", "Child (2-12)"),
          AgeBox("infant", "Adult (<2)"),
          v(2),
          Row(
            children: [
              Text(
                "Type",
                style: text(context).titleMedium,
              ),
              Spacer(),
              DropdownButton(
                value: 0,
                items: [
                  DropdownMenuItem(value: 0, child: Text("Economy")),
                  DropdownMenuItem(value: 1, child: Text("Premium")),
                  DropdownMenuItem(value: 2, child: Text("Business")),
                  DropdownMenuItem(value: 3, child: Text("First"))
                ],
                onChanged: (value) => (),
              )
            ],
          )
        ],
      ),
    );
  }
}

class AgeBox extends StatelessWidget {
  final String index;
  final String label;
  const AgeBox(this.index, this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Text(label, style: text(context).bodyLarge),
          Spacer(),
          SetAmountBox(index)
        ],
      ),
    );
  }
}

class SetAmountBox extends StatelessWidget {
  final String index;
  const SetAmountBox(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.all(6),
          child: Icon(
            FontAwesomeIcons.minus,
            size: 16,
            color: Colors.white,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Text(
            "1",
            style: text(context).bodyLarge,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.all(6),
          child: Icon(
            FontAwesomeIcons.plus,
            size: 16,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
