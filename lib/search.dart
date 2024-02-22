import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(), // Empty container to remove back arrow
        title: Center(
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Search',
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.all(10),
            ),
          ),
        ),
        actions: [
          Center(
            child: IconButton(
              onPressed: () {
                // Handle search action
                String query = _searchController.text;
                print('Search query: $query');
              },
              icon: Icon(Icons.search),
            ),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Search Page Content',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
