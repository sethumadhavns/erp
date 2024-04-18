import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Providers extends ChangeNotifier {
  File? _image;
  File? get image => _image;
  final ImagePicker imagepicker = ImagePicker();

  Future<void> pickimage(ImageSource source) async {
    final pickedimage = await imagepicker.pickImage(source: source);
    if (pickedimage != null) {
      _image = File(pickedimage.path);
    }
    notifyListeners();
  }
}
