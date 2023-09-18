import 'package:flutter/material.dart';
import 'ui/form_data.dart';
import 'ui/tampil_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Data',
      initialRoute: '/form', // Rute awal aplikasi
      routes: {
        '/form': (context) => const FormDataPage(),
        '/tampil_data': (context) => const TampilDataPage(name: '', nim: '', birthYear: '', ),
      },
    );
  }
}
