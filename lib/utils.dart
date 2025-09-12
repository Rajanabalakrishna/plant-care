import "package:flutter/material.dart";

final Map<String, Map<String, dynamic>> plantDiseaseSolutions = {
  // APPLE DISEASES
  "Apple___Apple_scab": {
    "pesticide": "Copper-based fungicides",
    "description": "Fungal disease causing dark, scabby lesions on leaves and fruit",
    "url":"https://www.flipkart.com/search?q=copper%20based%20fungicides&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=on&as=off",
    "solutions": [
      {
        "title": "Fungicide Treatment",
        "desc": "Apply copper-based fungicides during early spring before bud break",
        "icon": "science"
      },
      {
        "title": "Pruning",
        "desc": "Remove infected branches and improve air circulation",
        "icon": "content_cut"
      },
      {
        "title": "Sanitation",
        "desc": "Clean up fallen leaves and debris around the tree",
        "icon": "cleaning_services"
      },
      {
        "title": "Resistant Varieties",
        "desc": "Consider planting scab-resistant apple varieties",
        "icon": "eco"
      }
    ]
  },

  "Apple___Black_rot": {
    "pesticide": "Systemic fungicides",
    "description": "Serious fungal disease affecting fruit, leaves, and bark",
    "url":"https://www.flipkart.com/search?q=systemic%20fungicides&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=off&as=off",
    "solutions": [
      {
        "title": "Immediate Removal",
        "desc": "Remove and destroy all infected fruit and plant material",
        "icon": "delete_forever"
      },
      {
        "title": "Fungicide Spray",
        "desc": "Apply systemic fungicides every 2-3 weeks during growing season",
        "icon": "spray"
      },
      {
        "title": "Canker Treatment",
        "desc": "Cut out infected bark cankers and sterilize tools",
        "icon": "healing"
      },
      {
        "title": "Soil Management",
        "desc": "Improve drainage and avoid overwatering",
        "icon": "water_drop"
      }
    ]
  },

  "Apple___Cedar_apple_rust": {
    "pesticide": "Preventive fungicides",
    "description": "Fungal disease requiring both apple and cedar trees to complete lifecycle",
    "url":"https://www.flipkart.com/search?q=preventive%20pesticides&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=on&as=off",
    "solutions": [
      {
        "title": "Remove Cedar Trees",
        "desc": "Remove nearby cedar or juniper trees within 1 mile if possible",
        "icon": "park"
      },
      {
        "title": "Protective Fungicides",
        "desc": "Apply preventive fungicides before spore release in spring",
        "icon": "shield"
      },
      {
        "title": "Resistant Cultivars",
        "desc": "Plant rust-resistant apple varieties",
        "icon": "verified"
      },
      {
        "title": "Regular Monitoring",
        "desc": "Inspect leaves regularly for orange spots",
        "icon": "visibility"
      }
    ]
  },

  // CHERRY DISEASES
  "Cherry___Powdery_mildew": {
    "pesticide": "Sulfur-based fungicides",
    "description": "White powdery coating on leaves, shoots, and fruit",
    "url":"https://www.flipkart.com/search?q=sulfur%20based%20fungicides&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=on&as=off",
    "solutions": [
      {
        "title": "Sulfur Treatment",
        "desc": "Apply sulfur-based fungicides weekly during infection period",
        "icon": "science"
      },
      {
        "title": "Air Circulation",
        "desc": "Prune to improve airflow and reduce humidity",
        "icon": "air"
      },
      {
        "title": "Water Management",
        "desc": "Water at soil level, avoid wetting leaves",
        "icon": "water_drop"
      },
      {
        "title": "Resistant Varieties",
        "desc": "Choose mildew-resistant cherry cultivars",
        "icon": "eco"
      }
    ]
  },

  // CORN DISEASES
  "Corn___Cercospora_leaf_spot Gray_leaf_spot": {
    "pesticide": "Foliar fungicides",
    "description": "Gray rectangular lesions on corn leaves",
    "url":"https://www.flipkart.com/search?q=foliar%20fungicides&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=on&as=off",
    "solutions": [
      {
        "title": "Crop Rotation",
        "desc": "Rotate with non-host crops for 2-3 years",
        "icon": "sync"
      },
      {
        "title": "Fungicide Application",
        "desc": "Apply foliar fungicides at early reproductive stages",
        "icon": "spray"
      },
      {
        "title": "Residue Management",
        "desc": "Bury or remove infected crop debris",
        "icon": "delete"
      },
      {
        "title": "Resistant Hybrids",
        "desc": "Plant gray leaf spot resistant corn varieties",
        "icon": "verified"
      }
    ]
  },

  "Corn___Common_rust": {
    "pesticide": "Fungicides (if severe)",
    "description": "Small, reddish-brown pustules on corn leaves",
    "url":"https://www.flipkart.com/search?q=%20fungicides&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=on&as=off",
    "solutions": [
      {
        "title": "Monitor Weather",
        "desc": "Watch for cool, humid conditions that favor rust",
        "icon": "cloud"
      },
      {
        "title": "Fungicide Treatment",
        "desc": "Apply fungicides if severe infection develops",
        "icon": "medication"
      },
      {
        "title": "Genetic Resistance",
        "desc": "Use rust-resistant corn hybrids",
        "icon": "security"
      },
      {
        "title": "Field Sanitation",
        "desc": "Remove volunteer corn plants",
        "icon": "cleaning_services"
      }
    ]
  },

  "Corn___Northern_Leaf_Blight": {
    "pesticide": "Fungicides at tasseling",
    "description": "Large, elliptical gray-green lesions on leaves",
    "url":"https://www.flipkart.com/search?q=Fungicides%20at%20tasseling&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=off&as=off",
    "solutions": [
      {
        "title": "Resistant Varieties",
        "desc": "Plant corn hybrids with resistance genes",
        "icon": "shield"
      },
      {
        "title": "Crop Rotation",
        "desc": "Rotate away from corn and sorghum",
        "icon": "autorenew"
      },
      {
        "title": "Fungicide Program",
        "desc": "Apply fungicides at tasseling stage",
        "icon": "science"
      },
      {
        "title": "Tillage Practices",
        "desc": "Bury crop residue to reduce inoculum",
        "icon": "agriculture"
      }
    ]
  },

  // GRAPE DISEASES
  "Grape___Black_rot": {
    "pesticide": "Fungicides from bud break",
    "description": "Black, mummified grapes and brown leaf spots",
    "url":"https://www.flipkart.com/search?q=Fungicides%20from%20bud%20break&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=on&as=off",
    "solutions": [
      {
        "title": "Sanitation",
        "desc": "Remove and destroy all mummified berries and infected leaves",
        "icon": "delete_sweep"
      },
      {
        "title": "Preventive Sprays",
        "desc": "Apply fungicides from bud break through fruit set",
        "icon": "spray"
      },
      {
        "title": "Canopy Management",
        "desc": "Prune for good air circulation and light penetration",
        "icon": "content_cut"
      },
      {
        "title": "Timing Control",
        "desc": "Critical sprays at bloom and 2-3 weeks after bloom",
        "icon": "schedule"
      }
    ]
  },

  "Grape___Esca_(Black_Measles)": {
    "pesticide": "Fungicidal paste for wounds",
    "description": "Chronic fungal disease affecting vine wood and leaves",
    "url":"https://www.flipkart.com/search?q=%22Fungicidal%20paste%20for%20plant%20wounds&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=on&as=off",
    "solutions": [
      {
        "title": "Trunk Surgery",
        "desc": "Remove infected wood and apply wound protectants",
        "icon": "healing"
      },
      {
        "title": "Preventive Care",
        "desc": "Protect pruning wounds with fungicidal paste",
        "icon": "shield"
      },
      {
        "title": "Stress Reduction",
        "desc": "Maintain proper irrigation and nutrition",
        "icon": "favorite"
      },
      {
        "title": "Replace Severely Affected",
        "desc": "Remove and replace severely diseased vines",
        "icon": "restart_alt"
      }
    ]
  },

  "Grape___Leaf_blight_(Isariopsis_Leaf_Spot)": {
    "pesticide": "Copper-based sprays",
    "description": "Brown spots with yellow halos on grape leaves",
    "url":"https://www.flipkart.com/search?q=copper%20based%20fungicides&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=on&as=off",
    "solutions": [
      {
        "title": "Copper Fungicides",
        "desc": "Apply copper-based sprays during wet periods",
        "icon": "science"
      },
      {
        "title": "Leaf Removal",
        "desc": "Remove infected leaves and improve air circulation",
        "icon": "eco"
      },
      {
        "title": "Moisture Control",
        "desc": "Avoid overhead irrigation and reduce humidity",
        "icon": "water_drop"
      },
      {
        "title": "Regular Monitoring",
        "desc": "Scout regularly during humid weather",
        "icon": "search"
      }
    ]
  },

  // CITRUS DISEASES
  "Orange___Haunglongbing_(Citrus_greening)": {
    "pesticide": "Systemic insecticides for psyllid control",
    "description": "Devastating bacterial disease spread by Asian citrus psyllid",
    "url":"https://www.flipkart.com/search?q=%22Systemic%20insecticides%20for%20psyllid%20control%22&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=on&as=off",
    "solutions": [
      {
        "title": "Vector Control",
        "desc": "Control Asian citrus psyllid with systemic insecticides",
        "icon": "bug_report"
      },
      {
        "title": "Tree Removal",
        "desc": "Remove and destroy infected trees immediately",
        "icon": "delete_forever"
      },
      {
        "title": "Nutritional Support",
        "desc": "Apply foliar nutrients to support tree health",
        "icon": "local_pharmacy"
      },
      {
        "title": "Quarantine Measures",
        "desc": "Prevent movement of infected plant material",
        "icon": "block"
      }
    ]
  },

  // PEACH DISEASES
  "Peach___Bacterial_spot": {
    "pesticide": "Copper bactericides",
    "description": "Bacterial disease causing fruit and leaf spots",
    "url":"https://www.flipkart.com/search?q=copper%20based%20fungicides&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=on&as=off",
    "solutions": [
      {
        "title": "Copper Sprays",
        "desc": "Apply copper bactericides during dormant season",
        "icon": "science"
      },
      {
        "title": "Resistant Varieties",
        "desc": "Plant bacterial spot resistant peach cultivars",
        "icon": "verified"
      },
      {
        "title": "Pruning Management",
        "desc": "Prune during dry weather to prevent spread",
        "icon": "content_cut"
      },
      {
        "title": "Wind Protection",
        "desc": "Use windbreaks to reduce leaf injury and infection",
        "icon": "shield"
      }
    ]
  },

  // PEPPER DISEASES
  "Pepper,_bell___Bacterial_spot": {
    "pesticide": "Copper-based bactericides",
    "url":"https://www.flipkart.com/search?q=copper%20based%20fungicides&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=on&as=off",
    "description": "Bacterial disease causing dark spots on leaves and fruit",
    "solutions": [
      {
        "title": "Seed Treatment",
        "desc": "Use pathogen-free seeds or treat seeds with hot water",
        "icon": "thermostat"
      },
      {
        "title": "Copper Applications",
        "desc": "Apply copper-based bactericides preventively",
        "icon": "science"
      },
      {
        "title": "Crop Rotation",
        "desc": "Rotate with non-solanaceous crops for 3+ years",
        "icon": "sync"
      },
      {
        "title": "Water Management",
        "desc": "Use drip irrigation to avoid wetting foliage",
        "icon": "water_drop"
      }
    ]
  },

  // POTATO DISEASES
  "Potato___Early_blight": {
    "pesticide": "Preventive fungicides",
    "description": "Fungal disease causing brown spots with target-like rings",
    "url":"https://www.flipkart.com/search?q=preventive%20fungicides&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=off&as=off",
    "solutions": [
      {
        "title": "Fungicide Program",
        "desc": "Apply preventive fungicides every 7-14 days",
        "icon": "medication"
      },
      {
        "title": "Crop Rotation",
        "desc": "Rotate with non-solanaceous crops",
        "icon": "autorenew"
      },
      {
        "title": "Plant Spacing",
        "desc": "Ensure proper spacing for air circulation",
        "icon": "space_bar"
      },
      {
        "title": "Resistant Varieties",
        "desc": "Choose early blight resistant potato varieties",
        "icon": "security"
      }
    ]
  },

  "Potato___Late_blight": {
    "pesticide": "Systemic fungicides",
    "description": "Devastating disease that can destroy entire crops quickly",
    "url":"https://www.flipkart.com/search?q=preventive%20fungicides&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=off&as=off",
    "solutions": [
      {
        "title": "Immediate Fungicide",
        "desc": "Apply systemic fungicides at first sign of disease",
        "icon": "emergency"
      },
      {
        "title": "Weather Monitoring",
        "desc": "Monitor for cool, wet conditions favoring disease",
        "icon": "cloud"
      },
      {
        "title": "Destroy Infected Plants",
        "desc": "Remove and destroy infected plants immediately",
        "icon": "delete_forever"
      },
      {
        "title": "Certified Seed",
        "desc": "Use only certified, disease-free seed potatoes",
        "icon": "verified"
      }
    ]
  },

  // SQUASH DISEASES
  "Squash___Powdery_mildew": {
    "pesticide": "Sulfur fungicides",
    "description": "White powdery coating on leaves and stems",
    "url":"https://www.flipkart.com/search?q=sulfur%20fungicides&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=on&as=off",
    "solutions": [
      {
        "title": "Sulfur Treatment",
        "desc": "Apply sulfur fungicides at first sign of disease",
        "icon": "science"
      },
      {
        "title": "Resistant Varieties",
        "desc": "Plant powdery mildew resistant squash varieties",
        "icon": "eco"
      },
      {
        "title": "Air Circulation",
        "desc": "Space plants properly and prune for airflow",
        "icon": "air"
      },
      {
        "title": "Avoid Overhead Watering",
        "desc": "Water at soil level to reduce humidity",
        "icon": "water_drop"
      }
    ]
  },

  // STRAWBERRY DISEASES
  "Strawberry___Leaf_scorch": {
    "pesticide": "Fungicides during bloom",
    "description": "Fungal disease causing purple to brown leaf spots",
    "url":"https://www.flipkart.com/search?q=Fungicides%20during%20bloom&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=off&as=off",
    "solutions": [
      {
        "title": "Fungicide Application",
        "desc": "Apply fungicides during bloom and after harvest",
        "icon": "spray"
      },
      {
        "title": "Plant Spacing",
        "desc": "Ensure adequate spacing between plants",
        "icon": "space_bar"
      },
      {
        "title": "Remove Old Leaves",
        "desc": "Remove infected leaves and plant debris",
        "icon": "delete"
      },
      {
        "title": "Resistant Cultivars",
        "desc": "Choose leaf scorch resistant strawberry varieties",
        "icon": "verified"
      }
    ]
  },

  // TOMATO DISEASES
  "Tomato___Bacterial_spot": {
    "pesticide": "Copper-based sprays",
    "description": "Bacterial disease causing dark spots on leaves and fruit",
    "url":"https://www.flipkart.com/search?q=Fungicides%20during%20bloom&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=off&as=off",
    "solutions": [
      {
        "title": "Copper Bactericides",
        "desc": "Apply copper-based sprays preventively",
        "icon": "science"
      },
      {
        "title": "Seed Treatment",
        "desc": "Use pathogen-free seeds or treat with bleach solution",
        "icon": "cleaning_services"
      },
      {
        "title": "Avoid Overhead Irrigation",
        "desc": "Use drip irrigation to keep foliage dry",
        "icon": "water_drop"
      },
      {
        "title": "Crop Rotation",
        "desc": "Rotate with non-solanaceous crops for 3+ years",
        "icon": "sync"
      }
    ]
  },

  "Tomato___Early_blight": {
    "pesticide": "Preventive fungicides",
    "description": "Fungal disease with characteristic target spot lesions",
    "url":"https://www.flipkart.com/search?q=Fungicides%20during%20bloom&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=off&as=off",
    "solutions": [
      {
        "title": "Preventive Fungicides",
        "desc": "Apply fungicides before disease appears",
        "icon": "shield"
      },
      {
        "title": "Lower Leaf Removal",
        "desc": "Remove lower leaves touching the ground",
        "icon": "content_cut"
      },
      {
        "title": "Mulching",
        "desc": "Apply mulch to prevent soil splash onto leaves",
        "icon": "grass"
      },
      {
        "title": "Proper Nutrition",
        "desc": "Maintain balanced nutrition, especially potassium",
        "icon": "local_pharmacy"
      }
    ]
  },

  "Tomato___Late_blight": {
    "pesticide": "Systemic fungicides",
    "description": "Aggressive disease that can kill plants within days",
    "url":"https://www.flipkart.com/search?q=Fungicides%20during%20bloom&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=off&as=off",
    "solutions": [
      {
        "title": "Emergency Fungicide",
        "desc": "Apply systemic fungicides immediately upon detection",
        "icon": "emergency"
      },
      {
        "title": "Remove Infected Plants",
        "desc": "Destroy infected plants to prevent spread",
        "icon": "delete_forever"
      },
      {
        "title": "Improve Air Circulation",
        "desc": "Space plants widely and stake properly",
        "icon": "air"
      },
      {
        "title": "Monitor Weather",
        "desc": "Be vigilant during cool, wet conditions",
        "icon": "visibility"
      }
    ]
  },

  "Tomato___Leaf_Mold": {
    "pesticide": "Fungicides targeting leaf mold",
    "description": "Fungal disease common in greenhouse tomatoes",
    "url":"https://www.flipkart.com/search?q=Fungicides%20during%20bloom&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=off&as=off",
    "solutions": [
      {
        "title": "Humidity Control",
        "desc": "Reduce humidity below 85% with ventilation",
        "icon": "air"
      },
      {
        "title": "Resistant Varieties",
        "desc": "Use leaf mold resistant tomato cultivars",
        "icon": "verified"
      },
      {
        "title": "Fungicide Sprays",
        "desc": "Apply fungicides targeting leaf mold",
        "icon": "spray"
      },
      {
        "title": "Lower Leaf Removal",
        "desc": "Remove lower leaves to improve air circulation",
        "icon": "eco"
      }
    ]
  },

  "Tomato___Septoria_leaf_spot": {
    "pesticide": "Chlorothalonil or copper-based fungicides",
    "description": "Fungal disease causing small spots with dark borders",
    "url":"https://www.flipkart.com/search?q=Fungicides%20during%20bloom&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=off&as=off",
    "solutions": [
      {
        "title": "Fungicide Treatment",
        "desc": "Apply chlorothalonil or copper-based fungicides",
        "icon": "medication"
      },
      {
        "title": "Mulch Application",
        "desc": "Mulch around plants to prevent soil splash",
        "icon": "grass"
      },
      {
        "title": "Water Management",
        "desc": "Water at soil level, avoid wetting leaves",
        "icon": "water_drop"
      },
      {
        "title": "Sanitation",
        "desc": "Remove infected plant debris",
        "icon": "cleaning_services"
      }
    ]
  },

  "Tomato___Spider_mites Two-spotted_spider_mite": {
    "pesticide": "Specific miticides like abamectin",
    "description": "Tiny pests causing stippling and webbing on leaves",
    "url":"https://www.flipkart.com/search?q=Fungicides%20during%20bloom&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=off&as=off",
    "solutions": [
      {
        "title": "Miticide Application",
        "desc": "Apply specific miticides like abamectin",
        "icon": "bug_report"
      },
      {
        "title": "Increase Humidity",
        "desc": "Mist plants regularly as mites prefer dry conditions",
        "icon": "water_drop"
      },
      {
        "title": "Beneficial Insects",
        "desc": "Release predatory mites or ladybugs",
        "icon": "pets"
      },
      {
        "title": "Remove Infested Leaves",
        "desc": "Prune heavily infested leaves",
        "icon": "content_cut"
      }
    ]
  },

  "Tomato___Target_Spot": {
    "pesticide": "Rotated fungicide classes",
    "description": "Fungal disease with concentric ring patterns",
    "url":"https://www.flipkart.com/search?q=Fungicides%20during%20bloom&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=off&as=off",
    "solutions": [
      {
        "title": "Fungicide Rotation",
        "desc": "Rotate different fungicide classes to prevent resistance",
        "icon": "sync"
      },
      {
        "title": "Crop Rotation",
        "desc": "Avoid planting tomatoes in same location",
        "icon": "autorenew"
      },
      {
        "title": "Debris Removal",
        "desc": "Clean up plant debris at end of season",
        "icon": "delete_sweep"
      },
      {
        "title": "Proper Spacing",
        "desc": "Ensure adequate plant spacing for air circulation",
        "icon": "space_bar"
      }
    ]
  },

  "Tomato___Tomato_Yellow_Leaf_Curl_Virus": {
    "pesticide": "Systemic insecticides for whitefly control",
    "description": "Viral disease spread by whiteflies",
    "url":"https://www.flipkart.com/search?q=Fungicides%20during%20bloom&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=off&as=off",
    "solutions": [
      {
        "title": "Whitefly Control",
        "desc": "Control whiteflies with systemic insecticides",
        "icon": "bug_report"
      },
      {
        "title": "Remove Infected Plants",
        "desc": "Remove and destroy infected plants immediately",
        "icon": "delete_forever"
      },
      {
        "title": "Resistant Varieties",
        "desc": "Plant TYLCV-resistant tomato varieties",
        "icon": "security"
      },
      {
        "title": "Reflective Mulch",
        "desc": "Use reflective mulch to repel whiteflies",
        "icon": "brightness_7"
      }
    ]
  },

  "Tomato___Tomato_mosaic_virus": {
    "pesticide": "No chemical control available",
    "description": "Viral disease causing mottled leaves and stunted growth",
    "url":"https://www.flipkart.com/search?q=Fungicides%20during%20bloom&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=off&as=off",
    "solutions": [
      {
        "title": "Sanitation",
        "desc": "Disinfect tools and hands between plants",
        "icon": "cleaning_services"
      },
      {
        "title": "Remove Infected Plants",
        "desc": "Remove infected plants to prevent spread",
        "icon": "delete"
      },
      {
        "title": "Resistant Varieties",
        "desc": "Use TMV-resistant tomato cultivars",
        "icon": "verified"
      },
      {
        "title": "Avoid Tobacco Products",
        "desc": "Don't handle plants after using tobacco products",
        "icon": "smoke_free"
      }
    ]
  },

  // HEALTHY PLANTS
  "Apple___healthy": {
    "pesticide": "No treatment needed",
    "description": "Your apple tree appears healthy!",
    "url":"https://www.flipkart.com/search?q=Fungicides%20during%20bloom&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=off&as=off",
    "solutions": [
      {
        "title": "Preventive Care",
        "desc": "Continue regular watering and fertilization",
        "icon": "favorite"
      },
      {
        "title": "Regular Monitoring",
        "desc": "Check regularly for early signs of disease",
        "icon": "visibility"
      }
    ]
  },

  "Blueberry___healthy": {
    "pesticide": "No treatment needed",
    "description": "Your blueberry plant looks great!",
    "url":"https://www.flipkart.com/search?q=Fungicides%20during%20bloom&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=off&as=off",
    "solutions": [
      {
        "title": "Maintain Soil pH",
        "desc": "Keep soil acidic (pH 4.5-5.5) for optimal health",
        "icon": "science"
      },
      {
        "title": "Regular Pruning",
        "desc": "Prune annually for better fruit production",
        "icon": "content_cut"
      }
    ]
  },

  "Cherry___healthy": {
    "pesticide": "No treatment needed",
    "description": "Your cherry tree is in excellent condition!",
    "url":"https://www.flipkart.com/search?q=Fungicides%20during%20bloom&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=off&as=off",
    "solutions": [
      {
        "title": "Seasonal Care",
        "desc": "Continue proper watering and seasonal fertilization",
        "icon": "eco"
      }
    ]
  },

  "Corn___healthy": {
    "pesticide": "No treatment needed",
    "description": "Your corn plants are healthy and thriving!",
    "url":"https://www.flipkart.com/search?q=Fungicides%20during%20bloom&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=off&as=off",
    "solutions": [
      {
        "title": "Nutrient Management",
        "desc": "Maintain adequate nitrogen levels throughout growing season",
        "icon": "local_pharmacy"
      }
    ]
  },

  "Grape___healthy": {
    "pesticide": "No treatment needed",
    "description": "Your grapevines are in perfect health!",
    "url":"https://www.flipkart.com/search?q=Fungicides%20during%20bloom&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=off&as=off",
    "solutions": [
      {
        "title": "Pruning Schedule",
        "desc": "Continue annual dormant season pruning",
        "icon": "schedule"
      }
    ]
  },

  "Peach___healthy": {
    "pesticide": "No treatment needed",
    "description": "Your peach tree looks fantastic!",
    "url":"https://www.flipkart.com/search?q=Fungicides%20during%20bloom&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=off&as=off",
    "solutions": [
      {
        "title": "Fruit Thinning",
        "desc": "Thin fruit when young for better quality harvest",
        "icon": "filter_list"
      }
    ]
  },

  "Pepper,_bell___healthy": {
    "pesticide": "No treatment needed",
    "description": "Your bell peppers are growing beautifully!",
    "url":"https://www.flipkart.com/search?q=Fungicides%20during%20bloom&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=off&as=off",
    "solutions": [
      {
        "title": "Support Structures",
        "desc": "Provide stakes or cages as plants grow larger",
        "icon": "support"
      }
    ]
  },

  "Potato___healthy": {
    "pesticide": "No treatment needed",
    "description": "Your potato plants are healthy and strong!",
    "url":"https://www.flipkart.com/search?q=Fungicides%20during%20bloom&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=off&as=off",
    "solutions": [
      {
        "title": "Hilling",
        "desc": "Continue hilling soil around stems for better tuber development",
        "icon": "terrain"
      }
    ]
  },

  "Raspberry___healthy": {
    "pesticide": "No treatment needed",
    "description": "Your raspberry canes are in great shape!",
    "url":"https://www.flipkart.com/search?q=Fungicides%20during%20bloom&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=off&as=off",
    "solutions": [
      {
        "title": "Cane Management",
        "desc": "Remove old canes after fruiting to encourage new growth",
        "icon": "autorenew"
      }
    ]
  },

  "Soybean___healthy": {
    "pesticide": "No treatment needed",
    "description": "Your soybean plants are developing well!",
    "url":"https://www.flipkart.com/search?q=Fungicides%20during%20bloom&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=off&as=off",

    "solutions": [
      {
        "title": "Monitor Growth Stages",
        "desc": "Continue monitoring for optimal harvest timing",
        "icon": "timeline"
      }
    ]
  },

  "Strawberry___healthy": {
    "pesticide": "No treatment needed",
    "description": "Your strawberry plants look excellent!",
    "url":"https://www.flipkart.com/search?q=Fungicides%20during%20bloom&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=off&as=off",
    "solutions": [
      {
        "title": "Runner Management",
        "desc": "Manage runners for optimal fruit production",
        "icon": "call_split"
      }
    ]
  },

  "Tomato___healthy": {
    "pesticide": "No treatment needed",
    "description": "Your tomato plants are thriving!",
    "url":"https://www.flipkart.com/search?q=Fungicides%20during%20bloom&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=off&as=off",
    "solutions": [
      {
        "title": "Consistent Watering",
        "desc": "Maintain consistent soil moisture to prevent fruit cracking",
        "icon": "water_drop"
      },
      {
        "title": "Support Systems",
        "desc": "Ensure adequate staking or caging support",
        "icon": "support"
      }
    ]
  },

  "Background_without_leaves": {
    "pesticide": "No treatment needed",
    "description": "No plant detected in the image",
    "url":"https://www.flipkart.com/search?q=Fungicides%20during%20bloom&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=off&as=off",
    "solutions": [
      {
        "title": "Retake Photo",
        "desc": "Please capture an image with visible plant leaves",
        "icon": "camera_alt"
      }
    ]
  }
};

// Helper function to get severity color
Color getSeverityColor(String severity) {
  switch (severity.toLowerCase()) {
    case "critical":
      return Colors.red.shade700;
    case "high":
      return Colors.red.shade500;
    case "moderate":
      return Colors.orange.shade600;
    case "low":
      return Colors.yellow.shade700;
    case "none":
      return Colors.green.shade600;
    default:
      return Colors.grey.shade600;
  }
}

// Helper function to get icon from string
