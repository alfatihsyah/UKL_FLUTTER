import 'package:flutter/material.dart';
import 'package:tes/wigdet/Lokasi.dart';
import 'package:tes/wigdet/bioskopwidget.dart';

class BioskopPage extends StatelessWidget {
  const BioskopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Lokasi(),
                automaticallyImplyLeading: false, // Menghapus ikon default back

      ),
      body: BioskopWidget(), // Menggunakan widget dari file terpisah
    );
  }
}
