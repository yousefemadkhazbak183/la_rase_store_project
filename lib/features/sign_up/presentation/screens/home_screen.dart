import 'package:flutter/material.dart';
import 'package:la_rase_store_project/features/sign_up/presentation/widgets/bottom_bar.dart' show BottomBar;
import 'package:la_rase_store_project/features/sign_up/presentation/widgets/home_page.dart';
import 'package:la_rase_store_project/features/sign_up/presentation/widgets/product_widget.dart';
import 'package:la_rase_store_project/features/sign_up/presentation/widgets/search_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF936e5f),
        title: Text(
          'La Rase Store',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Handle notification button press
            },
            color: Colors.white,
          ),
        ],
      ),
      backgroundColor: Color(0xFF936e5f),
      body: Column(
        children: [
          SearchAppbar(),
          Expanded(
            flex: 1,
            child: HomeTab(),
          ),
          Expanded(
            flex: 1,
            child: ProductWidget()),
          BottomBar()
        ],
      ),
    );
  }
}