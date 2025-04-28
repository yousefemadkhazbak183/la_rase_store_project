import 'package:flutter/material.dart';
import 'package:la_rase_store_project/features/sign_up/presentation/widgets/Home_screen/Taps/Home_tap.dart';
import 'package:la_rase_store_project/features/sign_up/presentation/widgets/Home_screen/Taps/Profile_tap.dart';
import 'package:la_rase_store_project/features/sign_up/presentation/widgets/Home_screen/Taps/Wishlist_tap.dart';
//import 'package:la_rase_store_project/features/sign_up/presentation/widgets/Home_screen/Taps/cart.dart';

import 'Taps/cart_tap.dart';

class HomeScreen extends StatefulWidget {
  static const String routNam = 'homeScreen';
  static const Color primaryColor = Color(0xFFD2B48C);
  static const Color accentColor = Color(0xFF8B4513);
  static const Color backgroundColor = Color(0xFFF5F5F0);

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  final List<Map<String, dynamic>> discountedProducts = [
    {
      'title': 'Beaded Bag 1',
      'imageUrl': 'assets/proudct1.jpeg',
      'originalPrice': 30.0,
      'discountedPrice': 25.0,
    },
    {
      'title': 'Beaded Bag 2',
      'imageUrl': 'assets/proudct3.jpeg',
      'originalPrice': 40.0,
      'discountedPrice': 35.0,
    },
    {
      'title': 'Beaded Bag 3',
      'imageUrl': 'assets/proudct2.jpeg',
      'originalPrice': 50.0,
      'discountedPrice': 42.0,
    },
  ];

  final List<Map<String, dynamic>> featuredProducts = [
    {
      'title': 'Black Beaded Bag',
      'imageUrl': 'assets/black_beaded_bag.jpeg',
      'price': 25.0,
    },
    {
      'title': 'Pink Beaded Bag',
      'imageUrl': 'assets/pink_beaded_bag.jpeg',
      'price': 35.0,
    },
    {
      'title': 'Orange Beaded Bag',
      'imageUrl': 'assets/black_beaded_bag.jpeg',
      'price': 42.0,
    },
    {
      'title': 'Black Heart Bag',
      'imageUrl': 'assets/pink_beaded_bag.jpeg',
      'price': 30.0,
    },
    {
      'title': 'Extra Beaded Bag 1',
      'imageUrl': 'assets/black_beaded_bag.jpeg',
      'price': 28.0,
    },
    {
      'title': 'Extra Beaded Bag 2',
      'imageUrl': 'assets/pink_beaded_bag.jpeg',
      'price': 32.0,
    },
  ];

  List<Map<String, dynamic>> wishlistItems = [];
  List<Map<String, dynamic>> cartItems = [];

  void addToWishlist(Map<String, dynamic> product) {
    setState(() {
      wishlistItems.add(product);
    });
  }

  void removeFromWishlist(Map<String, dynamic> product) {
    setState(() {
      wishlistItems.removeWhere((item) => item['title'] == product['title']);
    });
  }

  void addToCart(Map<String, dynamic> product) {
    setState(() {
      final existingProduct = cartItems.firstWhere(
            (item) => item['title'] == product['title'],
        orElse: () => {},
      );
      if (existingProduct.isNotEmpty) {
        existingProduct['quantity'] = (existingProduct['quantity'] ?? 1) + 1;
      } else {
        cartItems.add({...product, 'quantity': 1});
      }
    });
  }

  void removeFromCart(Map<String, dynamic> product) {
    setState(() {
      cartItems.removeWhere((item) => item['title'] == product['title']);
    });
  }

  void updateQuantity(Map<String, dynamic> product, int newQuantity) {
    setState(() {
      if (newQuantity <= 0) {
        cartItems.removeWhere((item) => item['title'] == product['title']);
      } else {
        final existingProduct = cartItems.firstWhere((item) => item['title'] == product['title']);
        existingProduct['quantity'] = newQuantity;
      }
    });
  }

  late List<Widget> taps;

  @override
  void initState() {
    super.initState();
    taps = [
      HomeTap(
        discountedProducts: discountedProducts,
        featuredProducts: featuredProducts,
        primaryColor: HomeScreen.primaryColor,
        accentColor: HomeScreen.accentColor,
        backgroundColor: HomeScreen.backgroundColor,
        wishlistItems: wishlistItems,
        addToWishlist: addToWishlist,
        removeFromWishlist: removeFromWishlist,
        cartItems: cartItems,
        addToCart: addToCart,
        removeFromCart: removeFromCart,
        updateQuantity: updateQuantity,
      ),
      WishlistTap(
        wishlistItems: wishlistItems,
        removeFromWishlist: removeFromWishlist,
        accentColor: HomeScreen.accentColor,
        backgroundColor: HomeScreen.backgroundColor,
      ),
      CartTap(
        cartItems: cartItems,
        removeFromCart: removeFromCart,
        updateQuantity: updateQuantity,
        accentColor: HomeScreen.accentColor,
        backgroundColor: HomeScreen.backgroundColor,
        primaryColor: HomeScreen.primaryColor,
      ),
      ProfileTap(
        primaryColor: HomeScreen.primaryColor,
        accentColor: HomeScreen.accentColor,
        backgroundColor: HomeScreen.backgroundColor,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HomeScreen.backgroundColor,
      appBar: AppBar(
        backgroundColor: HomeScreen.backgroundColor,
        elevation: 0,
        title: Text(
          selectedIndex == 0
              ? "La Rase Store"
              : selectedIndex == 1
              ? "Wishlist"
              : selectedIndex == 2
              ? "Cart"
              : "Profile",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: HomeScreen.accentColor,
          ),
        ),
        centerTitle: true,
      ),
      body: taps[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Wishlist"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: HomeScreen.accentColor.withOpacity(0.6),
        backgroundColor: HomeScreen.backgroundColor,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}