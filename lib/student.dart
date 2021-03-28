class Student {
  String studentID;
  String fullName;
  String email;
  String password;
  String role;

  Student(
      {this.studentID, this.fullName, this.email, this.password, this.role});
  factory Student.fromJson(Map<String, dynamic> json) => Student(
        studentID: json["id"],
        fullName: json["full_name"],
        email: json["email"],
        password: json["password"],
        role: json["role"],
      );

  Map<String, dynamic> toJson() => {
        "id": studentID,
        "full_name": fullName,
        "email": email,
        "password": password,
        "role": role,
      };
}
