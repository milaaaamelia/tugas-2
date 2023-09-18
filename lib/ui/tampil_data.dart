// ui/tampil_data.dart

import 'package:flutter/material.dart';

class TampilDataPage extends StatelessWidget {
  final String name;
  final String nim;
  final String birthYear;

  const TampilDataPage({
    super.key,
    required this.name,
    required this.nim,
    required this.birthYear,
  });

  int calculateAge() {
    int currentYear = DateTime.now().year;
    return currentYear - int.parse(birthYear);
  }

  @override
  Widget build(BuildContext context) {
    int age = calculateAge();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perkenalan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama: $name', style: const TextStyle(fontSize: 18.0)),
            Text('NIM: $nim', style: const TextStyle(fontSize: 18.0)),
            Text('Usia: $age tahun', style: const TextStyle(fontSize: 18.0)),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Kembali ke tampilan form
              },
              child: const Text('Kembali ke Form'),
            ),
          ],
        ),
      ),
    );
  }
}
