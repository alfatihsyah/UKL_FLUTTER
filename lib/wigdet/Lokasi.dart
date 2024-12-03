import 'package:flutter/material.dart';

class Lokasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: [
          Icon(
            Icons.location_on,
            color: Colors.grey[400],
            size: 35,
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'JAKARTA',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Colors.grey,
            size: 35,
          ),
        ],
      ),
    );
  }
}