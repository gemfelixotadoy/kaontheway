import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {

  // list of food menu
  final List<Food> _menu = [
  
  //food
  Food(
    name: "Chicken Inasal Regular", 
    description: "Mang Inasal", 
    imagePath: "lib/images/burgers/regular.png", 
    price: 99, 
    category: FoodCategory.food, 
    availableAddons: [
      Addon(name: "Extra Rice", price: 30),
      Addon(name: "Coke", price: 30),
      Addon(name: "Sprite", price: 30),
      Addon(name: "Ice Tea", price: 30),
      Addon(name: "Extra Spicy", price:5),
    ],
  ),
  Food(
    name: "Paa Large - PM1", 
    description: "Mang Inasal", 
    imagePath: "lib/images/burgers/pm1.png", 
    price: 125, 
    category: FoodCategory.food, 
    availableAddons: [
      Addon(name: "Extra Rice", price: 30),
      Addon(name: "Coke", price: 30),
      Addon(name: "Sprite", price: 30),
      Addon(name: "Ice Tea", price: 30),
      Addon(name: "Extra Spicy", price:5),
    ],
  ),
  Food(
    name: "Paa Large - PM2", 
    description: "Mang Inasal", 
    imagePath: "lib/images/burgers/pm2.png", 
    price: 154, 
    category: FoodCategory.food, 
    availableAddons: [
      Addon(name: "Extra Rice", price: 30),
      Addon(name: "Coke", price: 30),
      Addon(name: "Sprite", price: 30),
      Addon(name: "Ice Tea", price: 30),
      Addon(name: "Extra Spicy", price:5),
    ],
  ),
  Food(
    name: "Todo Solb Paa", 
    description: "Mang Inasal", 
    imagePath: "lib/images/burgers/todo paa large.png", 
    price: 189, 
    category: FoodCategory.food, 
    availableAddons: [
      Addon(name: "Extra Rice", price: 30),
      Addon(name: "Coke", price: 30),
      Addon(name: "Sprite", price: 30),
      Addon(name: "Ice Tea", price: 30),
       Addon(name: "Extra Spicy", price:5),
    ],
  ),
  Food(
    name: " Chicken Inasal Solo Fiesta", 
    description: "Mang Inasal", 
    imagePath: "lib/images/burgers/solo fiesta.png", 
    price: 40, 
    category: FoodCategory.food, 
    availableAddons: [
      Addon(name: "Extra Rice", price: 30),
      Addon(name: "Coke", price: 30),
      Addon(name: "Sprite", price: 30),
      Addon(name: "Ice Tea", price: 30),
    ],
  ),

    Food(
    name: "1 - pc. Chickenjoy Solo", 
    description: "Jollibee", 
    imagePath: "lib/images/burgers/c1.png", 
    price: 99, 
    category: FoodCategory.food, 
    availableAddons: [
      Addon(name: "Extra Rice", price: 30),
      Addon(name: "Coke", price: 30),
      Addon(name: "Sprite", price: 30),
      Addon(name: "Ice Tea", price: 30),
      Addon(name: "Extra Spicy", price:5),
    ],
  ),

     Food(
    name: "1 - pc. Burger Steak", 
    description: "Jollibee", 
    imagePath: "lib/images/burgers/b1.png", 
    price: 60, 
    category: FoodCategory.food, 
    availableAddons: [
      Addon(name: "Extra Rice", price: 30),
      Addon(name: "Coke", price: 30),
      Addon(name: "Sprite", price: 30),
      Addon(name: "Ice Tea", price: 30),
    ],
  ),

       Food(
    name: "1 - pc. Chickenjoy w/ Burger Steak & Half Jolly Spaghetti Super Meal", 
    description: "Jollibee", 
    imagePath: "lib/images/burgers/super meal.png", 
    price: 212, 
    category: FoodCategory.food, 
    availableAddons: [
      Addon(name: "Extra Rice", price: 30),
      Addon(name: "Coke", price: 30),
      Addon(name: "Sprite", price: 30),
      Addon(name: "Ice Tea", price: 30),
      Addon(name: "Extra Spicy", price:5),
    ],
  ),

  
       Food(
    name: "1 - pc. Chickenjoy w/ Jolly Spaghetti", 
    description: "Jollibee", 
    imagePath: "lib/images/burgers/chicken spag.png", 
    price: 132, 
    category: FoodCategory.food, 
    availableAddons: [
      Addon(name: "Extra Rice", price: 30),
      Addon(name: "Extra Spicy", price:5),
      Addon(name: "Coke", price: 30),
      Addon(name: "Sprite", price: 30),
      Addon(name: "Ice Tea", price: 30),
    ],
  ),

     Food(
    name: "1 - pc. Burger Steak w/ Fries & Drink", 
    description: "Jollibee", 
    imagePath: "lib/images/burgers/10.png", 
    price: 133, 
    category: FoodCategory.food, 
    availableAddons: [
      Addon(name: "Extra Rice", price: 30),
      Addon(name: "Coke", price: 30),
      Addon(name: "Sprite", price: 30),
      Addon(name: "Ice Tea", price: 30),
    ],
  ),


  //drinks
  Food(
    name: "Ice Caramel Macchiatos", 
    description: "Classic", 
    imagePath: "lib/images/burgers/ice-caramel.jpg", 
    price: 39, 
    category: FoodCategory.drinks, 
    availableAddons: [
      
    ],
  ),
  Food(
    name: "Don Darko", 
    description: "Premium Dark Cholocate", 
    imagePath: "lib/images/burgers/don darko.jpg", 
    price: 39, 
    category: FoodCategory.drinks, 
    availableAddons: [

    ],
  ),

  Food(
    name: "Don Matchatos", 
    description: "Pure Matcha from Japan", 
    imagePath: "lib/images/burgers/matcha.jpg", 
    price: 40, 
    category: FoodCategory.drinks, 
    availableAddons: [
      Addon(name: "Extra Cheese", price: 15),
      Addon(name: "Extra Mayo", price: 10),
      Addon(name: "Extra Patty", price: 35),
    ],
  ),
  Food(
    name: "Matcha Berry", 
    description: "Matcha and Stawberry", 
    imagePath: "lib/images/burgers/matcha berry.jpg", 
    price: 40, 
    category: FoodCategory.drinks, 
    availableAddons: [
      Addon(name: "Extra Cheese", price: 15),
      Addon(name: "Extra Mayo", price: 10),
      Addon(name: "Extra Patty", price: 35),
    ],
  ),
  
  Food(
    name: "Donya Berry", 
    description: "Real Strawberry Fruit", 
    imagePath: "lib/images/burgers/donya berry.jpg", 
    price: 39, 
    category: FoodCategory.drinks, 
    availableAddons: [
      
    ],
  ),
  Food(
    name: "Taro Cheesecake ",
    description: "Sebu Cha", 
    imagePath: "lib/images/burgers/taro.jpg", 
    price: 99, 
    category: FoodCategory.drinks, 
    availableAddons: [
      Addon(name: "Extra pearl", price: 20),
      Addon(name: "Sugar Level: 0% ", price: 0),
      Addon(name: "Sugar Level: 25% ", price: 0),
      Addon(name: "Sugar Level: 50%", price: 0),
      Addon(name: "Sugar Level: 75%", price: 0),
      Addon(name: "Sugar Level: 100%", price: 0),
    ],
  ),
  Food(
    name: " Mango Cheesecake", 
    description: "Sebu Cha", 
    imagePath: "lib/images/burgers/mango.jpg", 
    price: 99, 
    category: FoodCategory.drinks, 
    availableAddons: [
      Addon(name: "Extra pearl", price: 20),
      Addon(name: "Sugar Level: 0% ", price: 0),
      Addon(name: "Sugar Level: 25% ", price: 0),
      Addon(name: "Sugar Level: 50%", price: 0),
      Addon(name: "Sugar Level: 75%", price: 0),
      Addon(name: "Sugar Level: 100%", price: 0),
    ],
  ),
Food(
    name: " Green Coffee Hazelnut", 
    description: "Sebu Cha", 
    imagePath: "lib/images/burgers/hazelnut.jpg", 
    price: 99, 
    category: FoodCategory.drinks, 
    availableAddons: [
      Addon(name: "Extra pearl", price: 20),
    Addon(name: "Sugar Level: 0% ", price: 0),
      Addon(name: "Sugar Level: 25% ", price: 0),
      Addon(name: "Sugar Level: 50%", price: 0),
      Addon(name: "Sugar Level: 75%", price: 0),
      Addon(name: "Sugar Level: 100%", price: 0),
    ],
  ),
  Food(
    name: "Coffee Mocha Vanilla", 
    description: "Sebu Cha", 
    imagePath: "lib/images/burgers/coffee.jpg", 
    price: 99, 
    category: FoodCategory.drinks, 
    availableAddons: [
      Addon(name: "Extra pearl", price: 20),
     Addon(name: "Sugar Level: 0% ", price: 0),
      Addon(name: "Sugar Level: 25% ", price: 0),
      Addon(name: "Sugar Level: 50%", price: 0),
      Addon(name: "Sugar Level: 75%", price: 0),
      Addon(name: "Sugar Level: 100%", price: 0),
    ],
  ),

   Food(
    name: "Chai Coffee Latte", 
    description: "Sebu Cha", 
    imagePath: "lib/images/burgers/chai.jpg", 
    price: 99, 
    category: FoodCategory.drinks,  
    availableAddons: [
      Addon(name: "Extra pearl", price: 20),
      Addon(name: "Sugar Level: 0% ", price: 0),
      Addon(name: "Sugar Level: 25% ", price: 0),
      Addon(name: "Sugar Level: 50%", price: 0),
      Addon(name: "Sugar Level: 75%", price: 0),
      Addon(name: "Sugar Level: 100%", price: 0),
    ],
  ),

   Food(
    name: "Green Coffee Vanilla", 
    description: "Sebu Cha", 
    imagePath: "lib/images/burgers/green.jpg", 
    price: 99, 
    category: FoodCategory.drinks,  
    availableAddons: [
      Addon(name: "Extra pearl", price: 20),
      Addon(name: "Sugar Level: 0% ", price: 0),
      Addon(name: "Sugar Level: 25% ", price: 0),
      Addon(name: "Sugar Level: 50%", price: 0),
      Addon(name: "Sugar Level: 75%", price: 0),
      Addon(name: "Sugar Level: 100%", price: 0),
    ],
  ),
//deserts
   Food(
    name: "Chocolate Sundae", 
    description: "Jollibee", 
    imagePath: "lib/images/burgers/icecream.png", 
    price: 40, 
    category: FoodCategory.desserts,  
    availableAddons: [
     
    ],
  ),
  Food(
    name: "Peach Mango Pie", 
    description: "Jollibee", 
    imagePath: "lib/images/burgers/peach.png", 
    price: 40, 
    category: FoodCategory.desserts,  
    availableAddons: [
     
    ],
  ),

   Food(
    name: "Sol's Halo-Halo", 
    description: "Sol's Halo-Halo", 
    imagePath: "lib/images/burgers/halohalo.jpg", 
    price: 89, 
    category: FoodCategory.desserts,  
    availableAddons: [
     Addon(name: "With Ice Cream", price: 10),
    ],
  ),

   Food(
    name: "Dimsum's Coffee Jelly", 
    description: "Dimsum Break", 
    imagePath: "lib/images/burgers/coffeejelly.jpg", 
    price: 30, 
    category: FoodCategory.desserts,  
    availableAddons: [
    ],
  ),
  Food(
    name: "Mang Inasal's Halo-Halo", 
    description: "Mang Inasal", 
    imagePath: "lib/images/burgers/halo.jpg", 
    price: 50, 
    category: FoodCategory.desserts,  
    availableAddons: [
    ],
  ),
  ];

  

  /* 

  G E T T E R S 

  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /*

  O P E R A T I O N S

  */
 
  //usercart
  final List<CartItem> _cart = [];

  //delivery address (which user can change/update)
  String _deliveryAddress = 'Sabang, Danao City';


  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
  CartItem? cartItem = _cart.firstWhereOrNull((item) {

    bool isSameFood = item.food == food;
    bool isSameAddons = 
      ListEquality().equals(item.selectedAddons, selectedAddons);

    return isSameFood && isSameAddons;

  });
  //if item already exists, increase it's quantity

  if (cartItem != null) {
    cartItem.quantity++;
  }

  //otherwise, add a new cart item

  else{
    _cart.add(
      CartItem(
        food: food,
        selectedAddons: selectedAddons,
      ),
    );
  }
  notifyListeners();
}

  // remove from cart
  void removeFromCart(cartItem){
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      }else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }


  // get total price of cart

  double getTotalPrice(){
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
     
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total number of items in the cart

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear cart

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // update delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }



  /*

  H E L P E R S

  */

  // generate a receipt
 String displayCartReceipt() {
  final receipt = StringBuffer();
  receipt.writeln("Here's your receipt.");
  receipt.writeln();


  // format the date to include up to seonds only
  String formattedDate = 
      DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

      receipt.writeln(formattedDate);
      receipt.writeln();
      receipt.writeln("----------");
 
      for (final cartItem in _cart) {
        receipt.writeln("${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln(" Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
      }

      receipt.writeln("------------");
      receipt.writeln();
      receipt.writeln("Total Items: ${getTotalItemCount()}");
      receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
      receipt.writeln();
      receipt.writeln("Delivering to: $deliveryAddress");


      return receipt.toString();
 }




  //  format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  //format list of addons into list into a string
  String _formatAddons(List<Addon> addons) {
    return addons
      .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
      .join(", ");
  } 
}