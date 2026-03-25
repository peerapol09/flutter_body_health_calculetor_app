import 'package:flutter/material.dart';
import 'package:flutter_body_health_calculetor_app/views/home_ui.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
  void initState() {
    // หน่วงเวลา 3 วินาที แล้วเปลี่ยนไปหน้า HomeUi และปิด SplashScreenUi
    Future.delayed(
        // หน่วงเวลา
        Duration(seconds: 3),
        // ปิด SplashScreenUi และเปลี่ยนไปหน้า HomeUi
        () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeUi()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 170, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Body Health Calculator',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            SizedBox(height: 10),
            Text(
              '© 2026 All Rights Reserved',
              style: TextStyle(
                fontSize: 16,
                color: const Color.fromARGB(255, 87, 87, 87),
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              'creates by P_peerapol',
              style: TextStyle(
                fontSize: 16,
                color: const Color.fromARGB(255, 87, 87, 87),
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
