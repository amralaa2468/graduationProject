class Doctor {
  String doctorID;
  String firstName;
  String lastName;
  String email;
  String password;
  String role;

  Doctor(
      {this.doctorID,
      this.firstName,
      this.lastName,
      this.email,
      this.password,
      this.role});
  factory Doctor.fromJson(Map<String, dynamic> json) => Doctor(
        doctorID: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        password: json["password"],
        role: json["role"],
      );

  Map<String, dynamic> toJson() => {
        "id": doctorID,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "password": password,
        "role": role,
      };
  factory Doctor.fromJson1(Map<String, dynamic> json) => Doctor(
        doctorID: json["id"],
        password: json["password"],
        role: json["role"],
      );

  Map<String, dynamic> toJson1() => {
        "id": doctorID,
        "password": password,
        "role": role,
      };
}
