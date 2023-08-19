import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffec107),
      appBar: AppBar(
        centerTitle: true,
        elevation: 7.0,
        shadowColor: Colors.black,
        backgroundColor: Color(0xfffec107),
        title: const Text(
          'ТАПШЫРМА - 03',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "I`m Rich",
              style: GoogleFonts.sofia(
                color: Colors.black,
                fontSize: 48,
                fontWeight: FontWeight.w400,
                height: 2.3,
              ),
            ),
            Text(
              "I`m Rich",
              style: GoogleFonts.pacifico(
                color: Color(0xfff5423a),
                fontSize: 48,
                fontWeight: FontWeight.w400,
                height: 1.5,
              ),
            ),
            SizedBox(height: 15),
            Image.asset(
              '/image/d1.png',
              //width: 400,
              //height: 320,
            ),
          ],
        ),
      ),
    );
  }
}
