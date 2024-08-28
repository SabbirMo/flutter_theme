// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  final List<Profile>? profiles;

  UserModel({
    this.profiles,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        profiles: json["profiles"] == null
            ? []
            : List<Profile>.from(
                json["profiles"]!.map((x) => Profile.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "profiles": profiles == null
            ? []
            : List<dynamic>.from(profiles!.map((x) => x.toJson())),
      };
}

class Profile {
  final String? name;
  final String? email;
  final String? address;
  final String? city;
  final String? country;

  Profile({
    this.name,
    this.email,
    this.address,
    this.city,
    this.country,
  });

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        name: json["name"],
        email: json["email"],
        address: json["address"],
        city: json["city"],
        country: json["country"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "address": address,
        "city": city,
        "country": country,
      };
}
