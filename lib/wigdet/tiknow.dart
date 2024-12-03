import 'package:flutter/material.dart';

class Tixnow extends StatelessWidget {
  const Tixnow({super.key});

  @override
Widget build(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min, // Pastikan ukuran kolom disesuaikan dengan konten
    children: [
      SizedBox(height: 20),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          children: [
            Text(
              'TIX Now',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Text(
              "Semua",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            Icon(Icons.arrow_circle_right),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          children: [
            Text(
              'Update berita terbaru seputar dunia film',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
      ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          beritaItem(
            context,
            'SEKAWAN LIMO',
            'Film karya Skak studio memuai banyak pujian',
            ' 15 menit lalu',
                'Assets/b1.png',
          ),
          beritaItem(
            context,
            'BADARAWUHI',
            'Film berkelanjutan dari KKN DESA PENARI"',
            '2 hari lalu',
                'Assets/b2.png',
          ),
          beritaItem(
            context,
            'AIR MATA DIUJUNG SAJADAH',
            'Mengisahkan tentang sang ibu yang ditinggal anaknya',
            '4 hari lalu',
                'Assets/b3.png',
          ),
          beritaItem(
            context,
            '13 BOM DI JAKARTA',
            'Film yang menelan biaya lebih dari 1M',
            '5 hari lalu',
                'Assets/b4.png',
          ),
        ],
      ),
    ],
  );
}


  Widget beritaItem(BuildContext context, String title, String subtitle,
      String time, String imagePath) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 5),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}