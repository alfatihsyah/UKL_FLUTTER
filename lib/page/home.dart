import 'package:flutter/material.dart';
import 'package:tes/page/bioskop.dart';
import 'package:tes/page/tiket.dart';
import 'package:tes/page/tiket1.dart';
import 'package:tes/wigdet/Lokasi.dart';
import 'package:tes/wigdet/Spotlight.dart';
import 'package:tes/wigdet/cari.dart';
import 'package:tes/wigdet/promosi.dart';
import 'package:tes/wigdet/tayang.dart';
import 'package:tes/wigdet/tiknow.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    SingleChildScrollView( // Pastikan menggunakan SingleChildScrollView di halaman Beranda
      child: Column(
        children: [
          Lokasi(),
          Promosi(),
          Sedangtayang(),
          Spotlight(),
          Tixnow()
        ],
      ),
    ),
    BioskopPage(), // Halaman Bioskop
    TiketPage(),   // Halaman Tiket
    TiketkuPage(), // Halaman Tiketku
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: SearchBars(),
        automaticallyImplyLeading: false,
      ),
      body: _pages[_selectedIndex], // Tampilkan halaman berdasarkan index
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Bioskop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity),
            label: 'Tiket',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Tiketku',
          ),
        ],
        selectedItemColor: Colors.blue, // Warna saat dipilih
        unselectedItemColor: Colors.grey, // Warna saat tidak dipilih
        showUnselectedLabels: true,
      ),
    );
  }
}