

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFontsPractice extends StatefulWidget {
  const GoogleFontsPractice({super.key});

  @override
  State<GoogleFontsPractice> createState() => _GoogleFontsPracticeState();
}

class _GoogleFontsPracticeState extends State<GoogleFontsPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hello World", style: GoogleFonts.lato(
          fontSize: 100,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),),
      ),
    );
  }
}