import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vlamia_cafe/screens/home_screen.dart';
import 'package:vlamia_cafe/screens/keranjang_screen.dart';
import 'package:vlamia_cafe/screens/newsfeed.dart';
import 'package:vlamia_cafe/screens/profile_screen.dart';
import 'package:vlamia_cafe/screens/tambahbiodata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Home Screen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const KeranjangScreen(),
    const ProfileScreen(),
  ];

  final List<String> _appBarTitles = const [
    'Vlamia Cafe',
    'Keranjang Belanja', // Menambahkan judul untuk layar keranjang
    'Profile',
  ]; // List of titles corresponding to each screen

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitles[_selectedIndex]),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          
          children: [
            DrawerHeader(
  padding: EdgeInsets.zero,
  child: ListView(
    //crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      UserAccountsDrawerHeader(
        decoration: BoxDecoration(
          color: Colors.orange,
        ),
        accountName: Text(
          "Nama Pengguna",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        accountEmail: Text(
          "pengguna@gmail.com",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        currentAccountPicture: CircleAvatar(
          backgroundImage: AssetImage("images/fotoprofile.png"),
        ),
      ),
      SizedBox(height: 10),
    ],
  ),
),

             ListTile(
              leading: const Icon(Icons.link),
              title: const Text('Fetch Data News'),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) => NewsFeed(),),);
              },
            ),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text('Tambah Biodata'),
              onTap: () {
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) => TambahBiodata(),),);
              },
            ),
          ],
        ),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.shopping_cart),
            label: 'Keranjang',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(color: Colors.orange),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        onTap: _onItemTapped,
      ),
    );
  }
}
