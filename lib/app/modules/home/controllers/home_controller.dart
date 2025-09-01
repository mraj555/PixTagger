import 'dart:developer';
import 'dart:io';

import 'package:get/get.dart';
import 'package:google_mlkit_image_labeling/google_mlkit_image_labeling.dart';
import 'package:image_picker/image_picker.dart';

class HomeController extends GetxController {
  final ImagePicker _picker = ImagePicker();

  File? image;

  RxString result = "".obs;

  ImageLabeler imageLabeler = ImageLabeler(options: ImageLabelerOptions(confidenceThreshold: 0.5));

  ///Functionality for Capture Image and Pick Image from Gallery
  onPickImage(ImageSource source) async {
    result.value = "";
    XFile? file = await _picker.pickImage(source: source);

    if (file != null) {
      image = File(file.path);
      log("${image?.path}", name: "Path");

      final InputImage input_image = InputImage.fromFile(File(file.path));

      final List<ImageLabel> labels = await imageLabeler.processImage(input_image);

      for (ImageLabel label in labels) {
        result.value += "${label.label} ${label.confidence.toStringAsFixed(2)}\n";
      }
    }
    update();
  }
}
