import 'address_model.dart';
import 'company_model.dart';

class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final Address? address;
  final String? phone;
  final String? website;
  final Company? company;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
     this.address,
     this.phone,
     this.website,
     this.company,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
      address: Address.fromJson(json['address']),
      phone: json['phone'],
      website: json['website'],
      company: Company.fromJson(json['company']),
    );
  }
}
