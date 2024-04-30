import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Providers extends ChangeNotifier {
  File? _image;
  File? get image => _image;
  final ImagePicker imagePicker = ImagePicker();

  Future<void> pickimage(ImageSource source) async {
    final pickedImage = await imagePicker.pickImage(source: source);
    if (pickedImage != null) {
      _image = File(pickedImage.path);
    }
    notifyListeners();
  }
}
