import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'address.dart';
import 'name.dart';

class UserModel extends Equatable {
  final Address? address;
  final int? id;
  final String? email;
  final String? username;
  final String? password;
  final Name? name;
  final String? phone;
  final int? v;

  const UserModel({
    this.address,
    this.id,
    this.email,
    this.username,
    this.password,
    this.name,
    this.phone,
    this.v,
  });

  factory UserModel.fromMap(Map<String, dynamic> data) => UserModel(
        address: data['address'] == null
            ? null
            : Address.fromMap(data['address'] as Map<String, dynamic>),
        id: data['id'] as int?,
        email: data['email'] as String?,
        username: data['username'] as String?,
        password: data['password'] as String?,
        name: data['name'] == null
            ? null
            : Name.fromMap(data['name'] as Map<String, dynamic>),
        phone: data['phone'] as String?,
        v: data['__v'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'address': address?.toMap(),
        'id': id,
        'email': email,
        'username': username,
        'password': password,
        'name': name?.toMap(),
        'phone': phone,
        '__v': v,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [UserModel].
  factory UserModel.fromJson(String data) {
    return UserModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [UserModel] to a JSON string.
  String toJson() => json.encode(toMap());

  UserModel copyWith({
    Address? address,
    int? id,
    String? email,
    String? username,
    String? password,
    Name? name,
    String? phone,
    int? v,
  }) {
    return UserModel(
      address: address ?? this.address,
      id: id ?? this.id,
      email: email ?? this.email,
      username: username ?? this.username,
      password: password ?? this.password,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      v: v ?? this.v,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      address,
      id,
      email,
      username,
      password,
      name,
      phone,
      v,
    ];
  }
}
