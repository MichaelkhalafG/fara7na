class user {
  final int user_id;
  String username;
  String email;
  String password;
  String phone;
  bool type;

  user(this.user_id, this.username, this.email, this.password, this.phone,
      this.type);

  String Type(type) {
    String type_str;
    if (type) {
      type_str = "admin";
    } else {
      type_str = "client";
    }
    return type_str;
  }

  String password_stars(password) {
    int password_lenth = password.length;
    String stars = "";
    for (var i = 1; i <= password_lenth; i++) {
      stars = "$stars*";
    }
    return stars;
  }

  void update_user_data(
    String username,
    String password,
    String phone,
    String addres,
  ) {
    username = username;
    password = password;
    phone = phone;
  }

  String phone_val() {
    String error;
    int phone_len = phone.length;
    if (phone_len < 11) {
      error = " the phone num must be 11 number ";
    } else
      error = "${phone}";
    return error;
  }
}
