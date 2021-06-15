class Login {

  late String email;
  late String password;

  String get loemail {
    return email;
  }

  set loemail (String address) {
    this.email = address;
  }

  String get lopassword {
    return password;
  }
  set lopassword (String passw) {
    this.password = passw;
  }

}