import 'package:flutter/material.dart';

class SearchAppbar extends StatefulWidget {
  const SearchAppbar({super.key});

  @override
  State<SearchAppbar> createState() => _SearchAppbarState();
}

class _SearchAppbarState extends State<SearchAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25, left: 25, right: 25),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                    prefixIcon: Container(
                      padding: EdgeInsets.all(15),
                      width: 18,
                      child: Icon(Icons.search, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 11),
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(13),
                ),
                width: 50,
                child: Icon(
                  Icons.filter_list
                  ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
