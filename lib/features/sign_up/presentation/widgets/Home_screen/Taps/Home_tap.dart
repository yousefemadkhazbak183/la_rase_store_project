import 'package:flutter/material.dart';
import '../discounted_slider.dart';
import '../home_footer.dart';
import '../search_bar.dart';
import '../featured_products_horizontal_scroll.dart';

class HomeTap extends StatelessWidget {
  final List<Map<String, dynamic>> discountedProducts;
  final List<Map<String, dynamic>> featuredProducts;
  final Color primaryColor;
  final Color accentColor;
  final Color backgroundColor;
  final List<Map<String, dynamic>> wishlistItems;
  final Function(Map<String, dynamic>) addToWishlist;
  final Function(Map<String, dynamic>) removeFromWishlist;
  final List<Map<String, dynamic>> cartItems;
  final Function(Map<String, dynamic>) addToCart;
  final Function(Map<String, dynamic>) removeFromCart;
  final Function(Map<String, dynamic>, int) updateQuantity;

  const HomeTap({
    Key? key,
    required this.discountedProducts,
    required this.featuredProducts,
    required this.primaryColor,
    required this.accentColor,
    required this.backgroundColor,
    required this.wishlistItems,
    required this.addToWishlist,
    required this.removeFromWishlist,
    required this.cartItems,
    required this.addToCart,
    required this.removeFromCart,
    required this.updateQuantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      key: const Key('homeScrollView'),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBarWidget(accentColor: accentColor, primaryColor: primaryColor),
          DiscountedSlider(
            discountedProducts: discountedProducts,
            primaryColor: primaryColor,
            accentColor: accentColor,
            wishlistItems: wishlistItems,
            addToWishlist: addToWishlist,
            removeFromWishlist: removeFromWishlist,
            cartItems: cartItems,
            addToCart: addToCart,
            removeFromCart: removeFromCart,
            updateQuantity: updateQuantity,
          ),
          FeaturedProductsHorizontalScroll(
            featuredProducts: featuredProducts,
            primaryColor: primaryColor,
            accentColor: accentColor,
            wishlistItems: wishlistItems,
            addToWishlist: addToWishlist,
            removeFromWishlist: removeFromWishlist,
            cartItems: cartItems,
            addToCart: addToCart,
            removeFromCart: removeFromCart,
            updateQuantity: updateQuantity,
          ),
          HomeFooter(accentColor: accentColor, backgroundColor: backgroundColor),
        ],
      ),
    );
  }
}