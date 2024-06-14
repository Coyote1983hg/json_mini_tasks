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

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      gender: json['gender'],
      fullName: '${json['name']['first']} ${json['name']['last']}',
      city: json['location']['city'],
    );
  }
}
