import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:plant_care/main.dart';
import 'package:plant_care/pallete.dart';
import 'package:routemaster/routemaster.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final capturedImageProvider = StateProvider<File?>((ref) => null);

class CaptureScreen extends ConsumerStatefulWidget {
  const CaptureScreen({super.key});

  @override
  ConsumerState<CaptureScreen> createState() => _CaptureScreenState();
}

class _CaptureScreenState extends ConsumerState<CaptureScreen> {

  CameraController? controller;
  FlashMode _flashMode = FlashMode.off;

  void _toggleFlash() async {
    if (controller != null && controller!.value.isInitialized) {
      setState(() {
        _flashMode = _flashMode == FlashMode.off ? FlashMode.torch : FlashMode.off;
      });
      await controller!.setFlashMode(_flashMode);
    }
  }

  Future<void> pickFromGallery() async {
    // Request permission first
    PermissionStatus status = await Permission.photos.request();

    // Handle different permission states
    if (status.isGranted) {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        ref.read(capturedImageProvider.notifier).state = File(pickedFile.path);
        Routemaster.of(context).replace("/HomeScreen");
      }
    } else if (status.isDenied) {
      // Show dialog to explain why permission is needed
      _showPermissionDialog();
    } else if (status.isPermanentlyDenied) {
      // Direct user to settings
      openAppSettings();
    }
  }

  void _showPermissionDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Permission Required'),
        content: Text('Please allow access to photos to select images from gallery.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Permission.photos.request();
            },
            child: Text('Allow'),
          ),
        ],
      ),
    );
  }




  @override
  void initState() {
    super.initState();
    controller = CameraController(
      cameras[0], // back camera
      ResolutionPreset.high,
    );
    controller!.initialize().then((_) {
      if (!mounted) return;
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {


    if (controller == null || !controller!.value.isInitialized) {
      return const Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: Stack(
          children: [

            CameraPreview(controller!),

            // Main content
            Column(
              children: [
                // Header
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  color: Colors.black.withOpacity(0.3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
                      ),
                      const Text(
                        "Detect Disease",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.help_outline, color: Colors.white),
                      ),
                    ],
                  ),
                ),

                // Camera preview area
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      // image: DecorationImage(
                      //   image: NetworkImage(
                      //     "https://lh3.googleusercontent.com/aida-public/AB6AXuAhR9B9KmnszTaUCTAht73wL3sre4ROCN7_Mhed7iXa5vnMYed30hapCxYTXscTRccFdSe7YFejDYIdp5uUGofEAGCqvICnB-aXQUd8bdAdkuB35k1916ifHZobZdcZh5TW5Iq9L2W8xOV9D6d7Syw4LA0Zi8P_UjimeZlXhqAfzmNDarr5lodWsb8DV_ZyO-nSbbe5FNZ6bA-Q7GsTc-XW6hsf7K4OZXyCQqcTDOMM_LF-9jJIKJF-ZnE6mKuGw4r0oRjDsDOeZaU",
                      //   ),
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                    child: Container(
                      color: Colors.black.withOpacity(0.2),
                      child: Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.width * 1.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 4,
                              style: BorderStyle.solid, // use CustomPainter for dashed
                            ),
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                // Bottom action buttons
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: ()async{
                          pickFromGallery();
                        },
                        child: Column(
                          children: const [
                            Icon(Icons.photo_library, color: Colors.white70, size: 32),
                            SizedBox(height: 4),
                            Text("Gallery",
                                style: TextStyle(color: Colors.white70, fontSize: 12)),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: ()async {


                          if (controller != null && controller!.value.isInitialized) {
                            final picture = await controller!.takePicture();
                            if (!mounted) return;
                            ref.read(capturedImageProvider.notifier).state = File(picture.path);

                            // Now just pop, no need to send path
                            Routemaster.of(context).push("/HomeScreen");// 👈 correct way to return
                          }


                        },
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 8,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child:
                          const Icon(Icons.camera_alt, color: Colors.black, size: 40),
                        ),
                      ),
                      GestureDetector(
                        onTap: _toggleFlash,
                        child: Column(
                          children: const [
                            Icon(Icons.flash_on, color: Colors.white70, size: 32),
                            SizedBox(height: 4),
                            Text("Flash",
                                style: TextStyle(color: Colors.white70, fontSize: 12)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Footer Navigation (sticky bottom)
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: Container(
            //     color: Colors.black,
            //     child: BottomNavigationBar(
            //       backgroundColor: Colors.black,
            //       type: BottomNavigationBarType.fixed,
            //       selectedItemColor: Colors.greenAccent,
            //       unselectedItemColor: Colors.grey,
            //       items: const [
            //         BottomNavigationBarItem(
            //           icon: Icon(Icons.camera_alt),
            //           label: "Capture",
            //         ),
            //         BottomNavigationBarItem(
            //           icon: Icon(Icons.history),
            //           label: "History",
            //         ),
            //         BottomNavigationBarItem(
            //           icon: Icon(Icons.grass),
            //           label: "My Plants",
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );

  }
}
