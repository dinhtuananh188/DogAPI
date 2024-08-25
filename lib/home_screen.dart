import 'package:flutter/material.dart';
import 'menu/FavoritesPage.dart';
import 'menu/ListPage.dart';
import 'menu/ProfilePage.dart';
import 'menu/SearchPage.dart'; // Import the new search page

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    ListPage(),
    FavoritesPage(),
    ProfilePage(),
  ];

  final List<String> _titles = [
    'Danh sách',
    'Yêu thích',
    'Cá nhân',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _openSearchPage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SearchPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_selectedIndex]), // Đổi title theo mục được chọn
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: _openSearchPage,
          ),
        ],
      ),
      body: _pages[_selectedIndex], // Hiển thị trang tương ứng
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.format_list_bulleted),
          label: 'Danh sách',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Yêu thích',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Cá nhân',
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      onTap: onTap,
    );
  }
}
