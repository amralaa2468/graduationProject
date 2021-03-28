import 'dart:convert';
import 'package:graduation_project/qr_code.dart';
import 'package:http/http.dart';
import 'doctor.dart';

class API {
  //static var url = Uri.parse('http://10.0.2.2:8000/api');
  //'http://10.0.2.2:8000/api'
  /*192.168.1.18*/
  //'http://10.0.2.2:8000/api';

  static Future<Doctor> createDoctor(Doctor doctor) async {
    //business logic to send data to server
    print('in api');
    var url = Uri.parse('http://192.168.1.11:8000/api/signup');
    final Response response = await post(url,
        headers: <String, String>{
          'Content-Type': 'application/json;charset=UTF-8'
        },
        body: jsonEncode(doctor.toJson()));

    if (response.statusCode == 200) {
      print('success');
      //print(response.body);
      return Doctor.fromJson(json.decode(response.body));
    } else {
      print(response.statusCode);
      throw Exception("Can't load doctor");
    }
  }

  static Future<Doctor> loginDoctor(Doctor doctor) async {
    //business logic to send data to server
    var url = Uri.parse('http://10.0.2.2:8000/api/login');
    final Response response = await post(url,
        headers: <String, String>{
          'Content-Type': 'application/json;charset=UTF-8'
        },
        body: jsonEncode(doctor.toJson1()));

    if (response.statusCode == 200) {
      print('success');
      print(response.body);
      //print(Doctor.fromJson1(json.decode(response.body)));
      return Doctor.fromJson1(json.decode(response.body));
    } else {
      print(response.statusCode);
      throw Exception("Can't login doctor");
    }
  }

  static Future<QRCode> createQR(QRCode qrCode) async {
    print('in QR code');
    var url = Uri.parse('http://192.168.1.11:8000/api/attend_lec');
    final Response response = await post(url,
        /*headers: <String, String>{
          'Content-Type': 'application/json;charset=UTF-8',
        },*/
        body: jsonEncode(qrCode.toJson()));
    if (response.statusCode == 200) {
      print('success');
      return QRCode.fromJson(json.decode(response.body));
    } else {
      print(response.statusCode);
      throw Exception("Can't load QR code");
    }
  }
}
