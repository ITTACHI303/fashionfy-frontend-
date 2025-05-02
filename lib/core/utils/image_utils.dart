import 'dart:io';

import 'package:dio/dio.dart' as dio;
import 'package:path/path.dart';

class ImageUtils {
  static Future<dio.MultipartFile> getFormData(String imagePath,
      {required String mapKeyName}) async {
// get file name

    String fileNameMedia = '';
    if (imagePath.isNotEmpty) {
      File fileMedia = File(imagePath);
      fileNameMedia = basename(fileMedia.path);
// String extensionMedia = fileNameMedia.split('.').last;
    }

    return await dio.MultipartFile.fromFile(
      imagePath,
      filename: fileNameMedia,
    );
  }
}
