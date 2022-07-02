import 'package:flutter/material.dart';

class Shop {
  final String? image, title, desc, location, type;
  final int? id;
  Shop({
    required this.id,
    required this.image,
    required this.title,
    required this.desc,
    required this.location,
    required this.type,
  });
}

class NightShop {
  final String? nsImage, nsTitle, nsDesc, nsLocation;
  final int? nsId;
  NightShop({
    required this.nsImage,
    required this.nsId,
    required this.nsTitle,
    required this.nsDesc,
    required this.nsLocation,
  });

  // get image => null;

  // get title => null;
}

List bigImages = [
  "assets/img1.jpg",
  "assets/img2.jpg",
  "assets/img4.jpg",
  "assets/bbq.jpg",
  "assets/img5.webp",
];
List banner = [
  "assets/promotion.png",
  "assets/promotion1.png",
  "assets/promotion2.png",
];
List<Shop> shops = [
  Shop(
      id: 1,
      image: "assets/burger.jpg",
      title: "Fast Foods",
      desc:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      location: "Strand Road",
      type: "Burger,French Fries,Juices,Soda"),
  Shop(
      id: 2,
      image: "assets/pizza.png",
      title: "The Pizza",
      desc:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      location: "State Road",
      type: "Pizza,Bubble Tea,Ice-Cream"),
  Shop(
      id: 3,
      image: "assets/food.jpg",
      title: "Tasty",
      desc:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      location: "Main Road",
      type: "Salad"),
  Shop(
      id: 4,
      image: "assets/bbq.jpg",
      title: "BBQ and Grill",
      desc:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      location: "Rose Road",
      type: "BBQ,Hot Pot"),
  Shop(
      id: 5,
      image: "assets/food2.jpg",
      title: "Eleven",
      desc:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      location: "Elevn Road",
      type: "Breakfast"),
  Shop(
      id: 6,
      image: "assets/food3.jpg",
      title: "The Great",
      desc:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      location: "Jhonson Road",
      type: "Pasta"),
];

List<NightShop> nightShop = [
  NightShop(
      nsImage: "assets/beer.jpg",
      nsId: 1,
      nsTitle: "Mulitverse",
      nsDesc: "Beer and Cocktails",
      nsLocation: "Main Road"),
  NightShop(
      nsImage: "assets/beer_01.jpg",
      nsId: 2,
      nsTitle: "Arcane",
      nsDesc: "Beer Only",
      nsLocation: "Katty Road"),
  NightShop(
      nsImage: "assets/bar.jpg",
      nsId: 3,
      nsTitle: "Hello",
      nsDesc: "Beer and Cocktails",
      nsLocation: "Main Road"),
  NightShop(
      nsImage: "assets/bar2.jpg",
      nsId: 4,
      nsTitle: "Kitty",
      nsDesc: "Beer and Cocktails",
      nsLocation: "Strand Road"),
  NightShop(
      nsImage: "assets/bar3.jpg",
      nsId: 5,
      nsTitle: "Name",
      nsDesc: "Bar",
      nsLocation: "Main Road"),
];
