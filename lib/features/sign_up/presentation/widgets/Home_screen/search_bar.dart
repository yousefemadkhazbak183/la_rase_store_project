import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final Color accentColor;
  final Color primaryColor;

  const SearchBarWidget({
    required this.accentColor,
    required this.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: TextField(
        key: Key('searchBar'),
        decoration: InputDecoration(
          hintText: "Search for bags...",
          prefixIcon: Icon(Icons.search, color: accentColor),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: primaryColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: accentColor),
          ),
          contentPadding: EdgeInsets.all(16.0),
        ),
      ),
    );
  }
}
