import 'package:flutter/material.dart';
import 'home.dart';

class Pertemuan12 extends StatefulWidget {
  const Pertemuan12({Key? key}) : super(key: key);

  @override
  State<Pertemuan12> createState() => _Pertemuan12State();
}

class _Pertemuan12State extends State<Pertemuan12> {
  TextEditingController tecTeks = TextEditingController();
  String teks = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pertemuan 12'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Form',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Container judul Form
          Container(
            alignment: Alignment.center,
            child: TextFormField(
              controller: tecTeks,
              decoration:
                  const InputDecoration(hintText: 'Masukan Teks di sini'),
            ),
          ),
          // Container TextPostField
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  teks = tecTeks.text;
                });
              },
              child: const Text('Passing With TextEditingController'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ExPWC(sTeks: tecTeks.text)));
              },
              child: const Text('Passing With Controller'),
            ),
          ),

          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ExPWMR(),
                    settings: RouteSettings(arguments: tecTeks.text),
                  ),
                );
              },
              child: const Text('Passing With ModalRoute'),
            ), // ElevatedButton
          ), // Container Tombol PWMR // Container
          // child Text menunjukkan inputan
        ],
      ),
    );
  }
}

class ExPWC extends StatefulWidget {
  const ExPWC({Key? key, required this.sTeks}) : super(key: key);
  final String sTeks;

  @override
  State<ExPWC> createState() => _ExPWCState();
} // Class ExPWC

class _ExPWCState extends State<ExPWC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Passing With Constructor'),
      ), // AppBar
      body: Container(
        alignment: Alignment.center,
        child: Text(widget.sTeks),
      ), // body Container
    ); // Scaffold
  }
} // class _ExPWCState

class ExPWMR extends StatefulWidget {
  const ExPWMR({Key? key}) : super(key: key);

  @override
  State<ExPWMR> createState() => _ExPWMRState();
} // class ExPWMR

class _ExPWMRState extends State<ExPWMR> {
  String? sTeks;
  @override
  Widget build(BuildContext context) {
    sTeks = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Passing With ModalRoute'),
      ), // AppBar
      body: Container(
        alignment: Alignment.center,
        child: Text(sTeks!),
      ), // body : Container
    ); // Scaffold
  } // class _ExPWMRState
}
