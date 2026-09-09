class login {
  String? responseCode;
  String? message;
  String? status;
  UserData? userData;

  login({this.responseCode, this.message, this.status, this.userData});

  login.fromJson(Map<String, dynamic> json) {
    responseCode = json['response_code'];
    message = json['message'];
    status = json['status'];
    userData = json['user_data'] != null
        ? new UserData.fromJson(json['user_data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['response_code'] = this.responseCode;
    data['message'] = this.message;
    data['status'] = this.status;
    if (this.userData != null) {
      data['user_data'] = this.userData!.toJson();
    }
    return data;
  }
}

class UserData {
  String? id;
  String? name;
  String? surName;
  String? email;
  String? password;
  String? date;
  String? time;

  UserData(
      {this.id,
        this.name,
        this.surName,
        this.email,
        this.password,
        this.date,
        this.time});

  UserData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['Name'];
    surName = json['SurName'];
    email = json['Email'];
    password = json['Password'];
    date = json['Date'];
    time = json['Time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Name'] = this.name;
    data['SurName'] = this.surName;
    data['Email'] = this.email;
    data['Password'] = this.password;
    data['Date'] = this.date;
    data['Time'] = this.time;
    return data;
  }
}
