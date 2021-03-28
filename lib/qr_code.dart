import 'package:flutter/material.dart';

class QRCode {
  String data;
  String studentID;

  QRCode({this.data, this.studentID});

  factory QRCode.fromJson(Map<String, dynamic> json) => QRCode(
        data: json['qrContent'],
        studentID: json['studentID'],
      );
  Map<String, dynamic> toJson() => {
        "qrContent": data,
        "studentID": studentID,
      };
}
