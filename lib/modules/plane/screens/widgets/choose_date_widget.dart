import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:ticketpedia/utils/helper/divider_helper.dart';
import 'package:ticketpedia/utils/helper/style_helper.dart';

class ChooseDateWidget extends StatelessWidget {
  const ChooseDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    void submit(Object? value) {
      context.pop();
    }

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      height: 600,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Choose date",
            style: text(context).titleLarge,
          ),
          Divider(),
          v(2),
          Expanded(
            child: SfDateRangePicker(
              showTodayButton: true,
              showActionButtons: true,
              selectionMode: DateRangePickerSelectionMode.extendableRange,
              navigationDirection: DateRangePickerNavigationDirection.vertical,
              showNavigationArrow: true,
              enablePastDates: false,
              backgroundColor: Colors.white,
              todayHighlightColor: Colors.teal,
              startRangeSelectionColor: Colors.blue,
              endRangeSelectionColor: Colors.blue,
              rangeSelectionColor: Color.fromARGB(10, 0, 0, 0),
              onCancel: () => context.pop(),
              onSubmit: (value) => submit(value),
              minDate: DateTime.now(),
              cellBuilder: (context, details) {
                return Container(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        details.date.day.toString(),
                        style: text(context).bodyLarge,
                      ),
                      Text(
                        "2.6jt",
                        style: text(context).labelSmall,
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
