import 'package:flutter/material.dart';
import 'package:tes/page/home.dart';
import 'package:tes/wigdet/loginWidget.dart';


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Loginbar(),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 11.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "NAMA LENGKAP",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                TextField(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "NOMER HANDPHONE",
                  style: TextStyle(
                    fontSize: 14,
                  ), 
                ),
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    prefixText: "+62 ",
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );
                  },
                  child: Container(
                    height: 55,
                    margin: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 4.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 1, 68, 177),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const Center(
                      child: Text(
                        "Daftar TIX ID",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}