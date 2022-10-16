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

class WallpaperModel extends SerializableEntity {
  @override
  String get className => 'WallpaperModel';

  int? id;
  late String publisher;
  late String publisherUid;
  late String uid;
  late String title;
  late String url;
  late bool isVip;
  late List<String> categories;
  late String data;

  WallpaperModel({
    this.id,
    required this.publisher,
    required this.publisherUid,
    required this.uid,
    required this.title,
    required this.url,
    required this.isVip,
    required this.categories,
    required this.data,
  });

  WallpaperModel.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    publisher = _data['publisher']!;
    publisherUid = _data['publisherUid']!;
    uid = _data['uid']!;
    title = _data['title']!;
    url = _data['url']!;
    isVip = _data['isVip']!;
    categories = _data['categories']!.cast<String>();
    data = _data['data']!;
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'publisher': publisher,
      'publisherUid': publisherUid,
      'uid': uid,
      'title': title,
      'url': url,
      'isVip': isVip,
      'categories': categories,
      'data': data,
    });
  }
}
