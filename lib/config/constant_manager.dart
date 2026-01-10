import 'package:drop_down_search/leave_summary_model.dart';

class AppConstants {
  static final List<String> daysOfWeek = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];

  static final List<String> attendanceRange = ['This Month', 'last Month', 'Last 7 Days', 'Last 30 Days', 'Custom Range'];
  static final List<String> leaveStatus = ['All Type', 'Sick Leave', 'Casual Leave', 'Alter Leave', 'Leave Without Pay'];

  static final String errorMessage = "Somethig Went Wrong";

static  List<LeaveSummaryModel> leaveSummaryList = [
    LeaveSummaryModel(
      empNo: "1001",
      leaveSlno: "1",
      leaveTypeNo: "LT01",
      leaveTypeName: "Casual Leave",
      noOfDays: "10",
      effectiveDate: "2024-01-01",
      applyDays: "5",
      enjoyDays: "3",
      deductedLeave: "0",
      balance: "7",
      companyNo: "C001",
    ),
    LeaveSummaryModel(
      empNo: "1001",
      leaveSlno: "2",
      leaveTypeNo: "LT02",
      leaveTypeName: "Sick Leave",
      noOfDays: "8",
      effectiveDate: "2024-01-10",
      applyDays: "2",
      enjoyDays: "1",
      deductedLeave: "1",
      balance: "7",
      companyNo: "C001",
    ),
    LeaveSummaryModel(
      empNo: "1001",
      leaveSlno: "3",
      leaveTypeNo: "LT03",
      leaveTypeName: "Earned Leave",
      noOfDays: "15",
      effectiveDate: "2024-01-15",
      applyDays: "4",
      enjoyDays: "3",
      deductedLeave: "0",
      balance: "12",
      companyNo: "C001",
    ),
  ];
}
