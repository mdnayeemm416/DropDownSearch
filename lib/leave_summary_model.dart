class LeaveSummaryModel {
  String? empNo;
  String? leaveSlno;
  String? leaveTypeNo;
  String? leaveTypeName;
  String? noOfDays;
  String? effectiveDate;
  String? applyDays;
  String? enjoyDays;
  String? deductedLeave;
  String? balance;
  String? companyNo;

  LeaveSummaryModel({
    this.empNo,
    this.leaveSlno,
    this.leaveTypeNo,
    this.leaveTypeName,
    this.noOfDays,
    this.effectiveDate,
    this.applyDays,
    this.enjoyDays,
    this.deductedLeave,
    this.balance,
    this.companyNo,
  });

  factory LeaveSummaryModel.fromJson(Map<String, dynamic> json) {
    return LeaveSummaryModel(
      empNo: json["emp_no"]?.toString(),
      leaveSlno: json["leave_slno"]?.toString(),
      leaveTypeNo: json["leave_type_no"]?.toString(),
      leaveTypeName: json["leave_type_name"]?.toString(),
      noOfDays: json["no_of_days"]?.toString(),
      effectiveDate: json["effective_date"]?.toString(),
      applyDays: json["apply_days"]?.toString(),
      enjoyDays: json["enjoy_days"]?.toString(),
      deductedLeave: json["deducted_leave"]?.toString(),
      balance: json["balance"]?.toString(),
      companyNo: json["company_no"]?.toString(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "emp_no": empNo,
      "leave_slno": leaveSlno,
      "leave_type_no": leaveTypeNo,
      "leave_type_name": leaveTypeName,
      "no_of_days": noOfDays,
      "effective_date": effectiveDate,
      "apply_days": applyDays,
      "enjoy_days": enjoyDays,
      "deducted_leave": deductedLeave,
      "balance": balance,
      "company_no": companyNo,
    };
  }
}
