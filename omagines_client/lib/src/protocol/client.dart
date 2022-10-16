/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: public_member_api_docs
// ignore_for_file: unused_import
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: depend_on_referenced_packages

import 'dart:io';
import 'dart:typed_data' as typed_data;
import 'package:serverpod_client/serverpod_client.dart';
import 'protocol.dart';

class _EndpointAdmin extends EndpointRef {
  @override
  String get name => 'admin';

  _EndpointAdmin(EndpointCaller caller) : super(caller);

  Future<String> addWallpaper(
    WallpaperModel wallpaper,
  ) async {
    var retval =
        await caller.callServerEndpoint('admin', 'addWallpaper', 'String', {
      'wallpaper': wallpaper,
    });
    return retval;
  }

  Future<String?> getUploadDescription(
    String path,
  ) async {
    var retval = await caller
        .callServerEndpoint('admin', 'getUploadDescription', 'String', {
      'path': path,
    });
    return retval;
  }

  Future<bool> verifyUpload(
    String path,
  ) async {
    var retval =
        await caller.callServerEndpoint('admin', 'verifyUpload', 'bool', {
      'path': path,
    });
    return retval;
  }

  Future<bool> removeFile(
    String path,
  ) async {
    var retval =
        await caller.callServerEndpoint('admin', 'removeFile', 'bool', {
      'path': path,
    });
    return retval;
  }

  Future<String> updateWallpaper(
    WallpaperModel wallpaperModel,
  ) async {
    var retval =
        await caller.callServerEndpoint('admin', 'updateWallpaper', 'String', {
      'wallpaperModel': wallpaperModel,
    });
    return retval;
  }

  Future<bool> deleteWallpaper(
    WallpaperModel wallpaperModel,
  ) async {
    var retval =
        await caller.callServerEndpoint('admin', 'deleteWallpaper', 'bool', {
      'wallpaperModel': wallpaperModel,
    });
    return retval;
  }

  Future<bool> checkFileExist(
    String path,
  ) async {
    var retval =
        await caller.callServerEndpoint('admin', 'checkFileExist', 'bool', {
      'path': path,
    });
    return retval;
  }

  Future<String?> getFilePublicUrl(
    String path,
  ) async {
    var retval =
        await caller.callServerEndpoint('admin', 'getFilePublicUrl', 'String', {
      'path': path,
    });
    return retval;
  }

  Future<String> addCategory(
    CategoryModel categoryModel,
  ) async {
    var retval =
        await caller.callServerEndpoint('admin', 'addCategory', 'String', {
      'categoryModel': categoryModel,
    });
    return retval;
  }

  Future<bool> removeCategory(
    CategoryModel categoryModel,
  ) async {
    var retval =
        await caller.callServerEndpoint('admin', 'removeCategory', 'bool', {
      'categoryModel': categoryModel,
    });
    return retval;
  }

  Future<List<CategoryModel>> getCategories() async {
    var retval = await caller.callServerEndpoint(
        'admin', 'getCategories', 'List<CategoryModel>', {});
    return (retval as List).cast();
  }
}

class _EndpointUsers extends EndpointRef {
  @override
  String get name => 'users';

  _EndpointUsers(EndpointCaller caller) : super(caller);

  Future<String> addUser(
    UserModel userModel,
  ) async {
    var retval = await caller.callServerEndpoint('users', 'addUser', 'String', {
      'userModel': userModel,
    });
    return retval;
  }

  Future<UserModel?> getUser(
    String uid,
  ) async {
    var retval =
        await caller.callServerEndpoint('users', 'getUser', 'UserModel', {
      'uid': uid,
    });
    return retval;
  }

  Future<bool> updateUser(
    UserModel userModel,
  ) async {
    var retval =
        await caller.callServerEndpoint('users', 'updateUser', 'bool', {
      'userModel': userModel,
    });
    return retval;
  }
}

class _EndpointWallpapers extends EndpointRef {
  @override
  String get name => 'wallpapers';

  _EndpointWallpapers(EndpointCaller caller) : super(caller);

  Future<String> hello(
    String name,
  ) async {
    var retval =
        await caller.callServerEndpoint('wallpapers', 'hello', 'String', {
      'name': name,
    });
    return retval;
  }

  Future<List<WallpaperModel>> getWallpapers() async {
    var retval = await caller.callServerEndpoint(
        'wallpapers', 'getWallpapers', 'List<WallpaperModel>', {});
    return (retval as List).cast();
  }

  Future<List<WallpaperModel>> getWallpapersFromSearch(
    String keyword,
  ) async {
    var retval = await caller.callServerEndpoint(
        'wallpapers', 'getWallpapersFromSearch', 'List<WallpaperModel>', {
      'keyword': keyword,
    });
    return (retval as List).cast();
  }

  Future<List<WallpaperModel>> getWallpapersFromCategory(
    CategoryModel categoryModel,
  ) async {
    var retval = await caller.callServerEndpoint(
        'wallpapers', 'getWallpapersFromCategory', 'List<WallpaperModel>', {
      'categoryModel': categoryModel,
    });
    return (retval as List).cast();
  }
}

class Client extends ServerpodClient {
  late final _EndpointAdmin admin;
  late final _EndpointUsers users;
  late final _EndpointWallpapers wallpapers;

  Client(String host,
      {SecurityContext? context,
      ServerpodClientErrorCallback? errorHandler,
      AuthenticationKeyManager? authenticationKeyManager})
      : super(host, Protocol.instance,
            context: context,
            errorHandler: errorHandler,
            authenticationKeyManager: authenticationKeyManager) {
    admin = _EndpointAdmin(this);
    users = _EndpointUsers(this);
    wallpapers = _EndpointWallpapers(this);
  }

  @override
  Map<String, EndpointRef> get endpointRefLookup => {
        'admin': admin,
        'users': users,
        'wallpapers': wallpapers,
      };

  @override
  Map<String, ModuleEndpointCaller> get moduleLookup => {};
}
