import 'package:flutter/material.dart';
import 'home.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Pertemuan6 extends StatelessWidget {
  const Pertemuan6({super.key});

  @override
  //State<Pertemuan6> createState() => _Pertemuan6State();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pertemuan 8'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.topLeft,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const SMToast()),
                    (route) => false);
              },
              child: const Text('Toast'),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const SMTTooltip()),
                    (route) => false);
              },
              child: const Text("Tooltip"),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const SMSB()),
                    (route) => false);
              },
              child: const Text("SnackBar"),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.topLeft,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                    (route) => false);
              },
              child: const Text('Kembali'),
            ),
          ),
        ],
      ),
    );
  }
}

class SMToast extends StatelessWidget {
  const SMToast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Toast')),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(msg: 'Selamat Datang');
                },
                child: const Text('Toast 1 - Menampilkan Pesan'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: 'Selamat Datang', webPosition: 'left');
                },
                child: const Text('Toast 2 - Posisi Pesan Web'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(msg: 'Selamat Datang', webBgColor: '');
                },
                child: const Text('Toast 3 - Warna background Web'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: 'Selamat Datang', timeInSecForIosWeb: 3);
                },
                child: const Text('Toast 4 - Durasi Tampil Web'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: 'Selamat Datang', textColor: Colors.purple);
                },
                child: const Text('Toast 5 - Warna Teks'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                      (route) => false);
                },
                child: const Text('Kembali'),
              ),
            ),
          ],
        ));
  }
}

class SMTTooltip extends StatelessWidget {
  const SMTTooltip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tooltip"),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: const Tooltip(
              message: 'Ini Adalah Tooltip',
              child: Text("Tooltip 1 - Tampil Pesan"),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Tooltip(
              message: 'Ini adalah tooltip',
              decoration: const BoxDecoration(color: Colors.blue),
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Tooltip 2 - Tampil Warna Kotak Tooltip")),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Tooltip(
              message: 'Ini adalah tooltip',
              decoration: const BoxDecoration(color: Colors.blue),
              textStyle: TextStyle(color: Colors.amber),
              child: Icon(Icons.home, size: 50, color: Colors.amber),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Pertemuan6(),
                    ),
                    (route) => false,
                  );
                },
                child: const Text("Kembali")),
          ),
        ],
      ),
    );
  }
}

class SMSB extends StatelessWidget {
  const SMSB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SnackBar")),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(5),
            child: ElevatedButton(
              onPressed: () {
                const sb = SnackBar(content: Text("Ini adalah Snackbar"));
                ScaffoldMessenger.of(context).showSnackBar(sb);
              },
              child: const Text("SnackBar 1 - Menampilkan Pesan"),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(5),
            child: ElevatedButton(
              onPressed: () {
                const sb = SnackBar(
                  content: Text("Ini adalah Snackbar"),
                  backgroundColor: Colors.amber,
                );
                ScaffoldMessenger.of(context).showSnackBar(sb);
              },
              child: const Text("SnackBar 2 - Memberi Warna BG"),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(5),
            child: ElevatedButton(
              onPressed: () {
                const sb = SnackBar(
                  content: Text("Ini adalah Snackbar"),
                  duration: Duration(seconds: 3),
                );
                ScaffoldMessenger.of(context).showSnackBar(sb);
              },
              child: const Text("SnackBar 3 - Memberi Durasi"),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(5),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const Pertemuan6()),
                    (route) => false);
              },
              child: const Text("Kembali"),
            ),
          ),
        ],
      ),
    );
  }
}
