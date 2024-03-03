import 'package:flutter/material.dart';

import '../../routes/app_routes.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0; // Default index

  static List<Widget> _widgetOptions = <Widget>[
    Text('الصفحة الرئيسية'), // Home
    Text('مشينا'), // Leaderboard
    Text('الترتيب'), // Leaderboard
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('مرحبا عبدالرحمن'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildNumberList(),
            _buildScoreCard(),
            _buildActivityList(),
            // Display widget based on the current index
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_walk_rounded),
            label: 'مشينا',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard),
            label: 'الترتيب',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });

          // Navigate based on the selected index
          switch (index) {
            case 0:
              Navigator.pushNamed(
                  context,
                  AppRoutes
                      .homePage); // Assuming `homeScreen` is a route defined in AppRoutes
              break;
            case 1:
              Navigator.pushNamed(
                  context,
                  AppRoutes
                      .newActivityScreen); // Assuming `newActivityScreen` is a route defined in AppRoutes
              break;
            case 2:
              Navigator.pushNamed(
                  context,
                  AppRoutes
                      .leaderboardTabContainerScreen); // Assuming `leaderboardScreen` is a route defined in AppRoutes
              break;
            default:
              // Handle unexpected index here, if necessary
              break;
          }
        },
      ),
    );
  }

  Widget _buildNumberList() {
    return Container(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 9, // Assuming 9 items for the horizontal list
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 50,
            child: Card(
              child: Center(
                child: Text('${index + 1}'),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildScoreCard() {
    return Card(
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            Text(
              '5000',
              style: TextStyle(fontSize: 48, color: Colors.white),
            ),
            Text(
              'هدفك لهذا اليوم',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActivityList() {
    return Column(
      children: <Widget>[
        _buildActivityItem('الوقت', '1:59'),
        _buildActivityItem('ممشاك', '500 خطوة'),
        _buildActivityItem('ممشاك بالكيلو', '3.2 كيلو'),
        // Add more items...
      ],
    );
  }

  Widget _buildActivityItem(String title, String subtitle) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.green,
        child: Icon(Icons.directions_walk),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
