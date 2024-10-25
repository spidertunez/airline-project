import 'package:flutter/material.dart';
import 'package:travelbug/profile.dart';

import 'countrycard.dart';
import 'destination.dart';
import 'main.dart';
class ExplorerPage extends StatefulWidget {
  @override
  _ExplorerPageState createState() => _ExplorerPageState();
}

class _ExplorerPageState extends State<ExplorerPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfilePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9FA8DA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Text(
                    'Welcome to Travel bug',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                child: Text(
                  'Choose your destination :',
                  style: TextStyle(fontSize: 28, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your destination..',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DestinationDetailsPage()),
                  );
                },
                child: CountryCard(
                  countryName: 'England',
                  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/London_Skyline_%28125508655%29.jpeg/640px-London_Skyline_%28125508655%29.jpeg',
                ),
              ),
              CountryCard(
                countryName: 'France',
                imageUrl: 'https://crowncurrency.com.au/wp-content/uploads/2024/02/France-Spending-Money-Guide.jpeg',
              ),
              CountryCard(
                countryName: 'Japan',
                imageUrl: 'https://rimage.gnst.jp/livejapan.com/public/article/detail/a/00/02/a0002487/img/basic/a0002487_main.jpg',
              ),
              CountryCard(
                countryName: 'Australia',
                imageUrl: 'https://www.shutterstock.com/image-photo/pinkish-colourful-sunrise-over-sydney-600nw-1094901527.jpg',
              ),
              CountryCard(
                countryName: 'Brazil',
                imageUrl: 'https://media.audleytravel.com/-/media/images/home/south-america/brazil/country-guides/best-of-brazil-tips-for-the-first-time-visitor/copacabana_beach_shutterstock_1620688570_3000x1000.jpg?q=79&w=1920&h=640',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF9FA8DA),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore, color: Colors.deepPurple),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.deepPurple),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                _onItemTapped(2);
              },
              child: Icon(Icons.person, color: Colors.deepPurple),
            ),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}