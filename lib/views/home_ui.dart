import 'package:flutter/material.dart';
import 'package:flutter_body_health_calculetor_app/views/about_ui.dart';
import 'package:flutter_body_health_calculetor_app/views/bmi_ui.dart';
import 'package:flutter_body_health_calculetor_app/views/bmr_ui.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  int selectedIndex = 1; // ตัวแปรใช้กับเมยูด้านล่าง

  // ตัวแปรเก็บหน้าจอย่อยเอามาใช้กับ body
  // ข้อมูลที่มีตัวแปรแบบ list จะมี index กำกับหน้าจอ
  List subPage = [
    BmiUi(),
    AboutUi(),
    BmrUi(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: แถบด้านบน
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 228, 170, 255),
        title: Text(
          'BHC App',
          style: TextStyle(
            color: const Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        selectedItemColor: const Color.fromARGB(255, 192, 55, 255),
        unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'BMI'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'เกี่ยวกับ'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.fitness_center,
              ),
              label: 'BMR'),
        ],
      ),
      body: subPage[selectedIndex],
    );
  }
}
