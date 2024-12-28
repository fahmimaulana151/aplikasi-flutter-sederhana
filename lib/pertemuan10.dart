import 'package:flutter/material.dart';
import 'home.dart';

class Pertemuan10 extends StatelessWidget {
  const Pertemuan10({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pertemuan 10'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text('Menu'),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ExMPU()),
                );
              },
              child: const Text('Pop UP Menu'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ExMTB()),
                );
              },
              child: const Text('Tab Bar Menu'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EXMPTUB()),
                );
              },
              child: const Text('POP UP dan Tab Bar Menu'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ExMD()),
                );
              },
              child: const Text('Drawer Menu'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ExHBNB()),
                );
              },
              child: const Text('Bottom Navigation Bar Menu'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                    (route) => false,
                  );
                },
                child: const Text('Kembali')),
          )
        ],
      ),
    );
  }
}

class ExMPU extends StatelessWidget {
  const ExMPU({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pop UP Menu'),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => const [
              PopupMenuItem(child: Text('Setting')),
              PopupMenuItem(child: Text('Logout')),
            ],
          ),
        ],
      ),
    );
  }
}

class ExMTB extends StatefulWidget {
  const ExMTB({super.key});

  @override
  State<ExMTB> createState() => _ExMTBState();
}

class _ExMTBState extends State<ExMTB> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Jumlah tab
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Menu Tab Bar'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Home'),
              Tab(text: 'Info'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              alignment: Alignment.center,
              child: const Text('Halaman Home'),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text('Halaman Info'),
            ),
          ],
        ),
      ),
    );
  }
}

// Buat class baru pada file pertemuan10.dart
class EXMPTUB extends StatefulWidget {
  const EXMPTUB({super.key});

  @override
  State<EXMPTUB> createState() => _EXMPTUBState();
}

class _EXMPTUBState extends State<EXMPTUB> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Contoh Aplikasi'),
          actions: [
            const Icon(Icons.camera_enhance),
            const Icon(Icons.search),
            PopupMenuButton(
              itemBuilder: (context) => const [
                PopupMenuItem(child: Text('Group')),
                PopupMenuItem(child: Text('Siaran')),
                PopupMenuItem(child: Text('Setelan')),
              ],
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.groups),
              ),
              Tab(
                text: 'Inbox',
              ),
              Tab(
                text: 'Channel',
              ),
              Tab(
                text: 'Contact',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              alignment: Alignment.center,
              child: const Text('Halaman Group'),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text('Halaman Inbox'),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text('Halaman Channel'),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text('Halaman Contact'),
            ),
          ],
        ),
      ),
    );
  }
}

// Buat class baru pada file pertemuan10.dart
class ExMD extends StatelessWidget {
  const ExMD({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              currentAccountPicture: FlutterLogo(),
              accountName: Text('Pem_Bas_Mob'),
              accountEmail: Text('PBM@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Beranda'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profil'),
            ),
            AboutListTile(
              icon: Icon(Icons.info),
              applicationIcon: Icon(Icons.local_play),
              applicationName: 'Flutter PBM',
              applicationVersion: '01.10.12.24',
              applicationLegalese: '© 2024',
              child: Text('About App'),
            ),
          ],
        ),
      ),
    );
  }
}

class ExHBNB extends StatefulWidget {
  const ExHBNB({super.key});

  @override
  State<ExHBNB> createState() => _ExHBNBState();
}

class _ExHBNBState extends State<ExHBNB> {
  int _pilihNavBar = 0;

  _ubahPilihNavBar(int index) {
    setState(() {
      _pilihNavBar = index;
    });
  }

  final List<Widget> hM = [
    Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      child: const Text('Halaman Beranda'),
    ),
    Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      child: const Text('Halaman Inbox'),
    ),
    Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Nama : Fahmi Maulana',
            style: TextStyle(fontSize: 16.0), // Ukuran font
          ),
          SizedBox(height: 8.0), // Spasi antar baris
          Text(
            'NIM : 21.230.0115',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 8.0),
          Text(
            'Kelas : 7P52',
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('lib/images/profil.jpeg'),
              ),
              accountName: Text('21.230.0115'),
              accountEmail: Text('Fahmi Maulana'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Beranda'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profil'),
            ),
            AboutListTile(
              icon: Icon(Icons.info),
              applicationIcon: Icon(Icons.local_play),
              applicationName: 'Flutter PBM',
              applicationVersion: '01.10.12.24',
              applicationLegalese: '© 2024',
              child: Text('About App'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Tugas 4'),
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context); // Aksi ketika tombol kembali ditekan
          },
        ),
        actions: [
          Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.face),
            );
          }),
        ],
      ),
      body: hM[_pilihNavBar],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
          ),
        ],
        selectedItemColor: Colors.blue,
        currentIndex: _pilihNavBar,
        onTap: _ubahPilihNavBar,
      ),
    );
  }
}

class ExkFCB extends StatefulWidget {
  const ExkFCB({Key? key}) : super(key: key);

  @override
  State<ExkFCB> createState() => _ExkFCBState();
}

class _ExkFCBState extends State<ExkFCB> {
  bool isCheck1 = false;
  bool isCheck2 = false;
  bool isCheck3 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: const Text('Check Box'),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(100, 10, 100, 10),
          child: Column(
            children: [
              ListTile(
                title: const Text('Check 1'),
                leading: Checkbox(
                  value: isCheck1,
                  onChanged: (value) {
                    setState(() {
                      isCheck1 = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Check 2'),
                leading: Checkbox(
                  value: isCheck2,
                  onChanged: (value) {
                    setState(() {
                      isCheck2 = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Check 3'),
                leading: Checkbox(
                  value: isCheck3,
                  onChanged: (value) {
                    setState(() {
                      isCheck3 = value!;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
