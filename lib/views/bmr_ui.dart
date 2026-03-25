import 'package:flutter/material.dart';

class BmrUi extends StatefulWidget {
  const BmrUi({super.key});

  @override
  State<BmrUi> createState() => _BmrUiState();
}

class _BmrUiState extends State<BmrUi> {
  // สร้างตัวแปรสำหรับเลือกเพศ (ชายเป็น default)
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 30,
            right: 30,
            bottom: 50,
          ),
          child: Center(
            child: Column(
              children: [
                // ชื่อจอและรูปภาพ
                const Text(
                  'คำนวณหาอัตราการเผาผลาญที่\nร่างกายต้องการ (BMR)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Image.asset(
                  'assets/images/bmr.png',
                  width: 120,
                  height: 120,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 20),

                // ส่วนเลือกเพศ
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('เพศ'),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => setState(() => isMale = true),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              isMale ? Colors.blue[200] : Colors.white,
                          foregroundColor: Colors.black,
                          elevation: isMale ? 2 : 0,
                          side: const BorderSide(color: Colors.black12),
                        ),
                        child: const Text('ชาย'),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => setState(() => isMale = false),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              !isMale ? Colors.blue[200] : Colors.white,
                          foregroundColor: Colors.black,
                          elevation: !isMale ? 2 : 0,
                          side: const BorderSide(color: Colors.black12),
                        ),
                        child: const Text('หญิง'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),

                // ช่องกรอกน้ำหนัก
                _buildInputLabel('น้ำหนัก (kg.)'),
                _buildTextField('กรอกน้ำหนักของคุณ'),
                const SizedBox(height: 15),

                // ช่องกรอกส่วนสูง
                _buildInputLabel('ส่วนสูง (cm.)'),
                _buildTextField('กรอกส่วนสูงของคุณ'),
                const SizedBox(height: 15),

                // ช่องกรอกอายุ
                _buildInputLabel('อายุ (ปี)'),
                _buildTextField('กรอกอายุของคุณ'),
                const SizedBox(height: 25),

                // ปุ่มคำนวณ
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    fixedSize: Size(MediaQuery.of(context).size.width, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  child: const Text('คำนวณ BMR',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
                const SizedBox(height: 10),

                // ปุ่มล้างข้อมูล
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFB0B0B8),
                    fixedSize: Size(MediaQuery.of(context).size.width, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  child: const Text('ล้างข้อมูล',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
                const SizedBox(height: 25),

                // ส่วนแสดงผลลัพธ์
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: const [
                      Text(
                        'BMR',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        '0.00',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),
                      ),
                      Text('kcal/day'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper Widget สำหรับ Label
  Widget _buildInputLabel(String label) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Text(label, style: const TextStyle(fontSize: 14)),
      ),
    );
  }

  // Helper Widget สำหรับ TextField
  Widget _buildTextField(String hint) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.black12),
        ),
      ),
    );
  }
}
