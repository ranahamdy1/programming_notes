//The User class is responsible only for holding user data.
class User {
  int? id;
  String? name;

  User({this.id, this.name});
}

// The UserRepository class is responsible only for saving User objects
class UserRepository {
  void save(User user) {
  }
}

//The EmailService class is responsible only for sending emails to User objects
class EmailService {
  void sendEmail(User user) {
  }
}
