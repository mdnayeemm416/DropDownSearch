import 'package:drop_down_search/config/constant_manager.dart';
import 'package:drop_down_search/drop_down.dart';
import 'package:drop_down_search/extension.dart';
import 'package:drop_down_search/leave_summary_model.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drop Down"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownWidget<LeaveSummaryModel>(
              ontap: (value) {},
              isRequired: true,
              items: AppConstants.leaveSummaryList,
              height: 40,
              itemLabelBuilder: (leaveSummary) => leaveSummary.leaveTypeName ?? "--",
              width: context.width(.9),
            ),
            SizedBox(height: 10),
            DropdownWidget<String>(
              ontap: (value) {},
              isRequired: true,
              items: AppConstants.daysOfWeek,
              height: 40,
              width: context.width(.9),
              selectedItem: "Select Day",
            ),
          ],
        ),
      ),
    );
  }
}
