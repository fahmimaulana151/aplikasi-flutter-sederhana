import 'package:flutter/material.dart';
import 'pertemuan9.dart';
import 'pertemuan6.dart';
import 'pertemuan10.dart';
import 'pertemuan11.dart';
import 'pertemuan12.dart';
import 'praktikum12.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  //@override
  //State<Home> createState() => _HomeState();

//class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Utama'),
      ),
      //body: Container(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Pertemuan6()),
                      (route) => false);
                },
                child: const Text('Pertemuan 8')),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Pertemuan9()),
                      (route) => false);
                },
                child: const Text('Pertemuan 9')),
          ),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Pertemuan10()),
                      (route) => false);
                },
                child: const Text('Pertemuan 10')),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Pertemuan11()),
                      (route) => false);
                },
                child: const Text('Pertemuan 11')),
          ),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Pertemuan12()),
                      (route) => false);
                },
                child: const Text('Pertemuan 12')),
          ),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Praktikum12()),
                      (route) => false);
                },
                child: const Text('Praktikum 12')),
          ),
        ],
      ),
    );
  }
}
