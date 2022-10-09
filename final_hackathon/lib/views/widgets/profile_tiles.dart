import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget tiles(String text, Image image) {
  return Container(
    margin: const EdgeInsets.all(10),
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
      BoxShadow(
        color: Colors.white.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: const Offset(0, 3),
      )
    ]),
    child: ListTile(
      leading: image,
      title: Text(text, style: GoogleFonts.poppins(color: Colors.black,
        fontSize: 18, fontWeight: FontWeight.bold),
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
    ),
  );
}