/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: unused_import
// ignore_for_file: unnecessary_import
// ignore_for_file: overridden_fields
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: depend_on_referenced_packages

import 'package:serverpod_client/serverpod_client.dart';
import 'dart:typed_data';
import 'protocol.dart';

class UserModel extends SerializableEntity {
  @override
  String get className => 'UserModel';

  int? id;
  late String name;
  late String email;
  late String uid;
  late bool isAdmin;
  late bool isLifetime;
  late bool isVip;
  DateTime? purchasedAt;
  late int trials;
  DateTime? validUntil;

  UserModel({
    this.id,
    required this.name,
    required this.email,
    required this.uid,
    required this.isAdmin,
    required this.isLifetime,
    required this.isVip,
    this.purchasedAt,
    required this.trials,
    this.validUntil,
  });

  UserModel.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    name = _data['name']!;
    email = _data['email']!;
    uid = _data['uid']!;
    isAdmin = _data['isAdmin']!;
    isLifetime = _data['isLifetime']!;
    isVip = _data['isVip']!;
    purchasedAt = _data['purchasedAt'] != null
        ? DateTime.tryParse(_data['purchasedAt'])
        : null;
    trials = _data['trials']!;
    validUntil = _data['validUntil'] != null
        ? DateTime.tryParse(_data['validUntil'])
        : null;
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'name': name,
      'email': email,
      'uid': uid,
      'isAdmin': isAdmin,
      'isLifetime': isLifetime,
      'isVip': isVip,
      'purchasedAt': purchasedAt?.toUtc().toIso8601String(),
      'trials': trials,
      'validUntil': validUntil?.toUtc().toIso8601String(),
    });
  }
}
