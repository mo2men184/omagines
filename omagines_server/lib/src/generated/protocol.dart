/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: public_member_api_docs
// ignore_for_file: unnecessary_import
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: depend_on_referenced_packages

library protocol;

// ignore: unused_import
import 'dart:typed_data';
import 'package:serverpod/serverpod.dart';

import 'category_class.dart';
import 'user_class.dart';
import 'wallpaper_class.dart';

export 'category_class.dart';
export 'user_class.dart';
export 'wallpaper_class.dart';

class Protocol extends SerializationManagerServer {
  static final Protocol instance = Protocol();

  final Map<String, constructor> _constructors = {};
  @override
  Map<String, constructor> get constructors => _constructors;

  final Map<String, String> _tableClassMapping = {};
  @override
  Map<String, String> get tableClassMapping => _tableClassMapping;

  final Map<Type, Table> _typeTableMapping = {};
  @override
  Map<Type, Table> get typeTableMapping => _typeTableMapping;

  Protocol() {
    constructors['CategoryModel'] = (Map<String, dynamic> serialization) =>
        CategoryModel.fromSerialization(serialization);
    constructors['UserModel'] = (Map<String, dynamic> serialization) =>
        UserModel.fromSerialization(serialization);
    constructors['WallpaperModel'] = (Map<String, dynamic> serialization) =>
        WallpaperModel.fromSerialization(serialization);

    tableClassMapping['categorymodel'] = 'CategoryModel';
    typeTableMapping[CategoryModel] = CategoryModel.t;
    tableClassMapping['usermodel'] = 'UserModel';
    typeTableMapping[UserModel] = UserModel.t;
    tableClassMapping['wallpapermodel'] = 'WallpaperModel';
    typeTableMapping[WallpaperModel] = WallpaperModel.t;
  }
}
