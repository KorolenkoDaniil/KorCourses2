class User {

  int id;
  String firstName;
  String lastName;
  String email;
  String password;


  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
  });

  String getDetails() {
    return 'id: $id, first name: $firstName, last name: $lastName, Email: $email, password: $password';
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
    };
  }


  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      password: json['password'],
    );
  }
}
