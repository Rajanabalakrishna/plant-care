import "package:flutter/material.dart";
import "package:lottie/lottie.dart";
import "package:routemaster/routemaster.dart";

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void navigateToHomeScreen() {
    Routemaster.of(context).replace("/HomeScreen");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds:3),(){
      navigateToHomeScreen();
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,

      body: Center(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.3,

                  child: Lottie.asset(
                    "assets/files/Growing Plant.json",
                    //fit: BoxFit.contain,
                  ),


                ),


                Text(
                  "Plant Care",
                  style: TextStyle(
                    fontFamily: "Lexend", // make sure you added it in pubspec.yaml
                    fontSize: 48,         // equivalent to Tailwind 5xl
                    fontWeight: FontWeight.w700, // bold
                    letterSpacing: -0.02 * 48,   // -0.02em → scale with font size
                    color: Colors.green[900],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
