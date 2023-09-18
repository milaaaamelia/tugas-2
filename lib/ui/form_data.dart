
// ui/form_data.dart

import 'package:flutter/material.dart';
import 'package:tugasprakmob/ui/tampil_data.dart';

class FormDataPage extends StatefulWidget {
  const FormDataPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FormDataPageState createState() => _FormDataPageState();
}

class _FormDataPageState extends State<FormDataPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _birthYearController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Data'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: _nimController,
              decoration: const InputDecoration(labelText: 'NIM'),
            ),
            TextField(
              controller: _birthYearController,
              decoration: const InputDecoration(labelText: 'Tahun Lahir'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Validasi data atau lakukan tindakan lainnya
                String name = _nameController.text;
                String nim = _nimController.text;
                String birthYear = _birthYearController.text;

                // Pindah ke halaman tampil_data.dart dengan membawa data
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TampilDataPage(
                      name: name,
                      nim: nim,
                      birthYear: birthYear,
                    ),
                  ),
                );
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _nimController.dispose();
    _birthYearController.dispose();
    super.dispose();
  }
}
