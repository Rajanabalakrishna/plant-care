

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tflite_v2/tflite_v2.dart';
//import 'package:tflite_v2/tflite_v2.dart';

/// State of TFLite (loaded or not)
final tfliteProvider = StateNotifierProvider<TFLiteNotifier, bool>((ref) {
  return TFLiteNotifier();
});

class TFLiteNotifier extends StateNotifier<bool> {
  TFLiteNotifier() : super(false) {
    _loadModel();
  }

  Future<void> _loadModel() async {
    try {
      print("🔄 Loading TensorFlow Lite model...");
      await Tflite.loadModel(
        model: "assets/files/plant_disease_detection_quant.tflite",
        labels: "assets/files/labels.txt",
      );
      print("✅ Model loaded successfully!");
      state = true;
    } catch (e) {
      print("❌ Error loading model: $e");
      state = false;
    }
  }

  /// Run inference on an image
  Future<List?> runInference(String imagePath) async {
    if (!state) return null;

    print("🔍 Running inference on: $imagePath");

    final results = await Tflite.runModelOnImage(
      path: imagePath,
      imageMean:0.0 ,
      imageStd: 1.0,
      numResults: 5,        // Get top 5 predictions
      threshold: 0.05,      // Very low threshold for debugging
    );

    print("📊 Raw results: $results");

    if (results != null) {
      for (var result in results) {
        print("Label: ${result['label']}, Confidence: ${result['confidence']}");
      }
    }

    return results;
  }

  @override
  void dispose() {
    Tflite.close();
    super.dispose();
  }


}
