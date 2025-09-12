import 'dart:io';
import 'package:flutter/material.dart';
import 'package:plant_care/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class DetectionResultPage extends StatelessWidget {
  final String diseaseName;
  final String severity;
  final String imagePath;

  const DetectionResultPage({
    super.key,
    required this.diseaseName,
    required this.severity,
    required this.imagePath,
  });

  Future<void> launchurl(String url, {required mode})async
  {
    final Uri uri=Uri.parse(url);
    if(!await launchUrl(uri,mode:LaunchMode.externalApplication)){
      throw 'Could not launch $url';

    }
  }


  @override
  Widget build(BuildContext context) {
    late dynamic path;
    return Scaffold(
      backgroundColor: const Color(0xFF122118),
      body: Stack(
        children: [
          Column(
            children: [
              // Top Banner (kept static for design)
              SizedBox(
                height: 320,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.file(
                      File(imagePath),
                      fit: BoxFit.cover,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Color(0xFF122118),
                            Color(0xB3122118),
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Scrollable content
              Expanded(
                child: SingleChildScrollView(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Plant Image with severity ring
                      Center(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 160,
                              height: 160,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: severityColor(severity),
                                  width: 4,
                                ),
                              ),
                            ),
                            CircleAvatar(
                              radius: 75,
                              backgroundImage: FileImage(File(imagePath)),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Detected Disease Card
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: const Color(0xCC1A2D23),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.white10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Detected Disease",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500)),
                                  const SizedBox(height: 5),
                                  Text(diseaseName,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            // Column(
                            //   crossAxisAlignment: CrossAxisAlignment.end,
                            //   children: [
                            //     const Text("Severity",
                            //         style: TextStyle(
                            //             color: Colors.yellow,
                            //             fontSize: 14,
                            //             fontWeight: FontWeight.w500)),
                            //     const SizedBox(height: 5),
                            //     Text(severity,
                            //         style: const TextStyle(
                            //             color: Colors.white,
                            //             fontSize: 22,
                            //             fontWeight: FontWeight.bold)),
                            //   ],
                            // ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Recommended Solutions Card
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: const Color(0xCC1A2D23),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.white10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Recommended Solutions",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                            const SizedBox(height: 16),


                            ...(() {
                              final diseaseData = plantDiseaseSolutions[diseaseName];
                              if (diseaseData != null && diseaseData['solutions'] != null) {
                                final solutions = diseaseData['solutions'] as List<dynamic>;
                                final link=diseaseData["url"];
                                path=link;
                                return solutions.map<Widget>((solution) {
                                  return solutionItem(
                                    getIconFromString(solution['icon'] ?? 'help_outline'),
                                    solution['title'] ?? 'Unknown',
                                    solution['desc'] ?? 'No description available',
                                  );
                                }).toList();
                              } else {
                                return [
                                  solutionItem(
                                    Icons.help_outline,
                                    "No solutions available",
                                    "Please consult with a plant specialist for treatment options.",
                                  )
                                ];
                              }
                            })(),


                            const SizedBox(height: 20),

                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF38E07B),
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                minimumSize: const Size.fromHeight(50),
                              ),
                              onPressed: () {
                                launchurl(path, mode: LaunchMode.externalApplication);
                              },
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Click to buy pesticides",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(width: 8),
                                  Icon(Icons.arrow_forward),
                                ],
                              ),
                            ),

                            SizedBox(height: 60,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // Top AppBar
          SafeArea(
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: CircleAvatar(
                      backgroundColor: Colors.black38,
                      child: const Icon(Icons.arrow_back, color: Colors.white),
                    ),
                  ),
                  const Text("Detection Result",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(width: 40),
                ],
              ),
            ),
          ),

          // Bottom Navigation
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xCC1B3124),
                border: Border(top: BorderSide(color: Color(0xFF264532))),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    navItem(Icons.photo_camera, "Capture", true),
                    navItem(Icons.history, "History", false),
                    navItem(Icons.info, "Information", false),
                  ],
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }

  Widget solutionItem(IconData icon, String title, String desc) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xFF264532),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(icon, color: const Color(0xFF38E07B)),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16)),
                const SizedBox(height: 4),
                Text(desc,
                    style: const TextStyle(
                        color: Color(0xFF96C5A9), fontSize: 14)),
              ],
            ),
          )
        ],
      ),
    );
  }

  Color severityColor(String severity) {
    switch (severity.toLowerCase()) {
      case "low":
        return Colors.green;
      case "moderate":
        return Colors.yellow;
      case "high":
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}

class navItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool active;

  const navItem(this.icon, this.label, this.active, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon,
            color: active
                ? const Color(0xFF38E07B)
                : const Color(0xFF96C5A9)),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: active
                ? const Color(0xFF38E07B)
                : const Color(0xFF96C5A9),
          ),
        ),
      ],
    );
  }
}

// Example solutions database
final Map<String, List<Map<String, String>>> solutions = {
  "Early Blight": [
    {"title": "Fungicide", "desc": "Apply a targeted fungicide."},
    {"title": "Prune Infected Areas", "desc": "Remove affected leaves."},
    {"title": "Improve Airflow", "desc": "Ensure good air circulation."},
  ],
  "Late Blight": [
    {"title": "Copper Fungicide", "desc": "Spray copper-based fungicide."},
    {"title": "Crop Rotation", "desc": "Avoid planting potatoes repeatedly."},
  ],
};

IconData getIconFromString(String iconName) {
  switch (iconName) {
    case "science": return Icons.science;
    case "content_cut": return Icons.content_cut;
    case "cleaning_services": return Icons.cleaning_services;
    case "eco": return Icons.eco;
    case "delete_forever": return Icons.delete_forever;
    case "spray": return Icons.water;
    case "healing": return Icons.healing;
    case "water_drop": return Icons.water_drop;
    case "shield": return Icons.shield;
    case "verified": return Icons.verified;
    case "visibility": return Icons.visibility;
    case "air": return Icons.air;
    case "sync": return Icons.sync;
    case "delete": return Icons.delete;
    case "security": return Icons.security;
    case "cloud": return Icons.cloud;
    case "medication": return Icons.medication;
    case "autorenew": return Icons.autorenew;
    case "agriculture": return Icons.agriculture;
    case "delete_sweep": return Icons.delete_sweep;
    case "schedule": return Icons.schedule;
    case "favorite": return Icons.favorite;
    case "restart_alt": return Icons.restart_alt;
    case "search": return Icons.search;
    case "bug_report": return Icons.bug_report;
    case "block": return Icons.block;
    case "local_pharmacy": return Icons.local_pharmacy;
    case "thermostat": return Icons.thermostat;
    case "space_bar": return Icons.space_bar;
    case "emergency": return Icons.emergency;
    case "pets": return Icons.pets;
    case "brightness_7": return Icons.brightness_7;
    case "smoke_free": return Icons.smoke_free;
    case "support": return Icons.support;
    case "terrain": return Icons.terrain;
    case "timeline": return Icons.timeline;
    case "call_split": return Icons.call_split;
    case "camera_alt": return Icons.camera_alt;
    case "filter_list": return Icons.filter_list;
    case "grass": return Icons.grass;
    default: return Icons.help_outline;
  }
}
