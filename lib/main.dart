import 'package:flutter/material.dart';
import 'ui/screens/home_screen.dart';
// Para Google Fonts
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const ElMandilonApp());
}

class ElMandilonApp extends StatelessWidget {
  const ElMandilonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'El Mandilón',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.grey[100],
        textTheme: GoogleFonts.openSansTextTheme(
          Theme.of(context).textTheme,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          elevation: 2,
          centerTitle: true,
        ),
        cardTheme: CardTheme(
          elevation: 4,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          shadowColor: Colors.grey.shade300,
        ),
      ),
      home: HomeScreen(),
    );
  }
}
