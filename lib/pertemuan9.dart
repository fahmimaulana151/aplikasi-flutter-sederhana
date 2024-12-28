import 'package:flutter/material.dart';
import 'home.dart';

class Pertemuan9 extends StatelessWidget {
  const Pertemuan9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pertemuan 9"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              "Scrolling",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ExLV()),
                );
              },
              child: const Text('ListView'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ExLVB()),
                );
              },
              child: const Text('ListView Builder'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ExLVS()),
                );
              },
              child: const Text('ListView Separated'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ExGV()),
                );
              },
              child: const Text('GridView'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ExGVC()),
                );
              },
              child: const Text('GridView Count'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ExGVB()),
                );
              },
              child: const Text('GridView Builder'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ExLVP()),
                );
              },
              child: const Text('ListView Properties'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ExLP9()),
                );
              },
              child: const Text('Latihan Pertemuan 9'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
              child: const Text('Kembali'),
            ),
          ),
        ],
      ),
    );
  }
}

class ExLV extends StatelessWidget {
  const ExLV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List View')),
      body: ListView(
        children: [
          Container(
            height: 250,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10),
            child: const Text('Text 1'),
          ),
          Container(
            height: 250,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10),
            child: const Text('Text 2'),
          ),
          Container(
            height: 250,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10),
            child: const Text('Text 3'),
          ),
          Container(
            height: 250,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10),
            child: const Text('Text 4'),
          ),
          Container(
            height: 250,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10),
            child: const Text('Text 5'),
          ),
          Container(
            height: 250,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10),
            child: const Text('Text 6'),
          ),
        ],
      ),
    );
  }
}

class ExLVB extends StatelessWidget {
  const ExLVB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Builder'),
      ),
      body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, position) {
            return Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  child: Text(
                    'Text $position',
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ],
            );
          }),
    );
  }
}

class ExLVS extends StatelessWidget {
  const ExLVS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List View Separated')),
      body: ListView.separated(
        itemCount: 30,
        separatorBuilder: (context, position) => const Divider(),
        itemBuilder: (context, position) {
          return Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
            child: Text('List Sparated $position'),
          );
        },
      ),
    );
  }
}

class ExGV extends StatelessWidget {
  const ExGV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grid View')),
      body: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 1',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 2',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 3',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 4',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 5',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 6',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 7',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 8',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 9',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 10',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 11',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 12',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 13',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 14',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 15',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 16',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 17',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 18',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}

class ExGVC extends StatelessWidget {
  const ExGVC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grid View Count')),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 1',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 2',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 3',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 4',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 5',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 6',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 7',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 8',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 9',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 10',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 11',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 12',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 13',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 14',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 15',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 16',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 17',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Grid Text 18',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}

class ExGVB extends StatelessWidget {
  const ExGVB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grid View Builder')),
      body: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 12,
        itemBuilder: (context, position) {
          return Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: Text('Grid Text $position'),
          );
        },
      ),
    );
  }
}

class ExLVP extends StatelessWidget {
  const ExLVP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List View')),
      body: ListView(
        // itemExtend untuk merubah ukuran tinggi widget yang ditampilkan lewat ListView
        // sehingga merubah tampilan mejadi lebih besar atau kecil secara vertikal
        itemExtent: 200,
        // reverse untuk membalik data / widget yang ditampilkan
        // sehingga posisi awal ada dibawah
        reverse: true,
        children: [
          Container(
            height: 250,
            color: Colors.amber,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10),
            child: const Text('Text 1'),
          ),
          Container(
            height: 250,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10),
            child: const Text('Text 2'),
          ),
          Container(
            height: 250,
            color: Colors.amber,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10),
            child: const Text('Text 3'),
          ),
          Container(
            height: 250,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10),
            child: const Text('Text 4'),
          ),
          Container(
            height: 250,
            color: Colors.amber,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10),
            child: const Text('Text 5'),
          ),
          Container(
            height: 250,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10),
            child: const Text('Text 6'),
          ),
        ],
      ),
    );
  }
}

class ExLP9 extends StatelessWidget {
  const ExLP9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Latihan')),
      body: ListView(
        // itemExtend untuk merubah ukuran tinggi widget yang ditampilkan lewat ListView
        // sehingga merubah tampilan mejadi lebih besar atau kecil secara vertikal
        itemExtent: 50,
        // reverse untuk membalik data / widget yang ditampilkan
        // sehingga posisi awal ada dibawah
        children: [
          Container(
            height: 50,
            color: Color(0xffc8ee9d),
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 10),
            child: const Text('LightGreenAccent 100'),
          ),
          Container(
            height: 50,
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 10),
            child: const Text('LightGreenAccent 0'),
          ),
          Container(
            height: 50,
            color: Color(0xff97e33e),
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 10),
            child: const Text('LightGreenAccent 400'),
          ),
          Container(
            height: 50,
            color: Color(0xff66b908),
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 10),
            child: const Text('LightGreenAccent 700'),
          ),
        ],
      ),
    );
  }
}
