import 'dart:io';

abstract class StorageServices {
  Future<String> uploadImage(String path,File file); // fill path as base24 format because File format make issues in api usualy but fierbase or other services accept file
}