import 'package:flutter/material.dart';
import 'package:flutter_body_health_calculetor_app/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    FluterBodyHealthCalculetor(),
  );
}

class FluterBodyHealthCalculetor extends StatefulWidget {
  const FluterBodyHealthCalculetor({super.key});

  @override
  State<FluterBodyHealthCalculetor> createState() =>
      _FluterBodyHealthCalculetorState();
}

class _FluterBodyHealthCalculetorState
    extends State<FluterBodyHealthCalculetor> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
