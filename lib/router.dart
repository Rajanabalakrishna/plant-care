

import 'package:flutter/material.dart';
import 'package:plant_care/Screens/HomeScreen.dart';
import 'package:plant_care/Screens/disease_Screen.dart';
import 'package:routemaster/routemaster.dart';

import 'Screens/Capture_Screen.dart';
import 'Screens/SplashScreen.dart';

final route=RouteMap(routes: {
  "/":(_)=>MaterialPage(child: Splashscreen()),
  "/HomeScreen":(_)=>MaterialPage(child: Homescreen()),
  "/CaptureScreen":(_)=>MaterialPage(child: CaptureScreen()),
  //"/diseaseScreen":(_)=>MaterialPage(child: DetectionResultPage())

  '/diseaseScreen': (route) {
    final disease = route.queryParameters["disease"] ?? "Unknown";
    final confidence = route.queryParameters["confidence"] ?? "0";
    final imagePath = route.queryParameters["imagePath"] ?? "";

    return MaterialPage(
      child: DetectionResultPage(

        imagePath: imagePath, diseaseName: disease, severity:confidence,
      ),
    );
  },


});