import 'package:flutter/material.dart';
import 'package:vlamia_cafe/screens/editprofile.dart';
import 'package:vlamia_cafe/screens/historypesanan.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('images/fotoprofile.png'),
              ),
              SizedBox(height: 20),
              Text(
                'Nama Pengguna',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'pengguna@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) => EditProfileScreen(),),);
                },
                child: Text('Edit Profile'),
              ),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.history),
                title: Text('History Pesanan'),
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) => HistoryPesanan(),),);
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.payment),
                title: Text('Metode Pembayaran'),
                onTap: () {
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Pengaturan'),
                onTap: () {
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: () {
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
