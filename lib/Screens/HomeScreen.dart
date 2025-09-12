import "dart:io";

import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:google_fonts/google_fonts.dart";
import "package:plant_care/pallete.dart";
import "package:routemaster/routemaster.dart";
import "package:tflite_v2/tflite_v2.dart";

import "../tflite.dart";
import "Capture_Screen.dart";

class Homescreen extends ConsumerStatefulWidget {
  const Homescreen({super.key});

  @override
  ConsumerState<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends ConsumerState<Homescreen> {

  // Add the async method here (outside build method)
  void _handleUpload() async {
    final capturedImage = ref.read(capturedImageProvider);
    final modelReady = ref.read(tfliteProvider);

    if (capturedImage != null && modelReady) {
      final results = await ref
          .read(tfliteProvider.notifier)
          .runInference(capturedImage.path);

      if (results != null && results.isNotEmpty) {
        final disease = results[0]["label"];
        final confidence =
        (results[0]["confidence"] * 100).toStringAsFixed(2);

        Routemaster.of(context).push(
          "/diseaseScreen",
          queryParameters: {
            "disease": disease,
            "severity": confidence,
            "imagePath": capturedImage.path,
          },
        );
      }
    } else {
      print("❌ Model not loaded yet or no image captured");
    }
  }

  @override
  Widget build(BuildContext context) {

    final capturedImage = ref.watch(capturedImageProvider);
    final modelReady = ref.watch(tfliteProvider); // true/false

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        centerTitle: true,
        title: Text("Capture"),
      ),

      body: Column(
        children: [
          const SizedBox(height: 90),
         
          Center(
            child: Container(
              width: 350,
              height: 250,
              decoration: BoxDecoration(
                color: Pallete.cardColor,
                borderRadius: BorderRadius.circular(20),
              ),

              child: Center(
                child: capturedImage==null?const Icon(Icons.image, size: 120, color: Colors.white24):ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.file(
                    capturedImage!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),

          Text(
            "Place the plant within the frame or upload an image from your gallery",
            style: GoogleFonts.notoSans(
              textStyle: const TextStyle(color: Colors.white70, fontSize: 14),
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 24),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _CaptureButton(
                icon: Icons.photo_camera,
                label: "Take Photo",
                color: Pallete.greenColor,
                onTap: () {
                  Routemaster.of(context).push("/CaptureScreen");
                },
              ),

              const SizedBox(width: 16),

              _CaptureButton(
                icon: Icons.photo_library,
                label: modelReady ? "Upload" : "Loading...",
                color: modelReady ? Pallete.greenColor : Colors.grey,
                onTap: modelReady ? _handleUpload : null,
              ),
            ],
          ),
        ],
      ),

      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 6),
        decoration: BoxDecoration(
          color: Pallete.navBgColor,
          border: Border(top: BorderSide(color: Pallete.cardColor, width: 1)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _NavItem(
              icon: Icons.center_focus_strong,
              label: "Capture",
              isActive: true,
              activeColor: Pallete.greenColor,
            ),

            _NavItem(
              icon: Icons.history,
              label: "History",
              isActive: false,
              activeColor: Pallete.greenColor,
            ),

            _NavItem(
              icon: Icons.info,
              label: "information",
              isActive: false,
              activeColor: Pallete.greenColor,
            ),
          ],
        ),
      ),
    );
  }
}

class _CaptureButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback? onTap; // Made nullable to handle disabled state

  const _CaptureButton({
    required this.icon,
    required this.label,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Icon(icon, size: 36, color: color),
            const SizedBox(height: 6),
            Text(
              label,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Bottom Navigation Item
class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;
  final Color activeColor;

  const _NavItem({
    required this.icon,
    required this.label,
    required this.isActive,
    required this.activeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: isActive ? activeColor : Colors.green.shade200),
        const SizedBox(height: 2),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: isActive ? activeColor : Colors.green.shade200,
          ),
        ),
      ],
    );
  }
}
