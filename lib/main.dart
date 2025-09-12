import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plant_care/pallete.dart';
import 'package:plant_care/router.dart';
import 'package:routemaster/routemaster.dart';

List<CameraDescription> cameras = [];

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras(); // load available cameras
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Plant Care",
      theme:Pallete.darkTheme ,
      routerDelegate: RoutemasterDelegate(routesBuilder:(context)=>route,),
      routeInformationParser: const RoutemasterParser(),


    );
  }
}



