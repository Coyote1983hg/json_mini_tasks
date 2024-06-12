class User {
  final String gender;
  final String fullName;
  final String city;

  User({
    required this.gender,
    required this.fullName,
    required this.city,
  });

  @override
  String toString() {
    return "$fullName is a $gender from $city";
  }

  
}