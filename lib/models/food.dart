
//food item
class Food {
  final String name;            //tteokbokki
  final String description;     //a korean comfort food
  final String imagePath;       // assets/images/tteokbokki.png
  final double price;           // 180 
  final FoodCategory category;  //food
  List<Addon> availableAddons;  // [cheese, gimbap]

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

//food categories
enum FoodCategory {
  food,
  drinks,
  desserts,
}

//food addons
class Addon {
  String name;
  double price;

  Addon({
    required this.name, 
    required this.price,
    });
}