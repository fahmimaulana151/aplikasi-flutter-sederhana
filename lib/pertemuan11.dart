import 'package:flutter/material.dart';
import 'home.dart';
import 'pertemuan10.dart';

class Pertemuan11 extends StatefulWidget {
  const Pertemuan11({Key? key}) : super(key: key);

  @override
  State<Pertemuan11> createState() => _Pertemuan11State();
}

class _Pertemuan11State extends State<Pertemuan11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pertemuan 11'),
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Komponen Form',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const ExkFDDB(),
          const ExkFRB(),
          const ExkFCB(),
          const ExxKFS(),
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
              child: const Text('Kembali'),
            ),
          ),
        ],
      ),
    );
  }
}

class ExkFDDB extends StatefulWidget {
  const ExkFDDB({Key? key}) : super(key: key);

  @override
  State<ExkFDDB> createState() => _ExkFDDBState();
}

class _ExkFDDBState extends State<ExkFDDB> {
  String selectedItem = '--- Pilih ---';
  List<String> itemValue = ['--- Pilih ---', 'PBM1', 'PBM2', 'PBW2'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: const Text('DropDownButton'),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: DropdownButton(
            items: itemValue.map((String itmValue) {
              return DropdownMenuItem(value: itmValue, child: Text(itmValue));
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedItem = value!;
              });
            },
            value: selectedItem,
          ),
        ),
      ],
    );
  }
}

class ExkFRB extends StatefulWidget {
  const ExkFRB({Key? key}) : super(key: key);

  @override
  State<ExkFRB> createState() => _ExkFRBState();
}

class _ExkFRBState extends State<ExkFRB> {
  int selectedOptn = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: const Text('Radio Button'),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(100, 10, 10, 10),
          child: Column(
            children: [
              ListTile(
                title: const Text('Option 1'),
                leading: Radio(
                  value: 1,
                  groupValue: selectedOptn,
                  onChanged: (value) {
                    setState(() {
                      selectedOptn = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Option 2'),
                leading: Radio(
                  value: 2,
                  groupValue: selectedOptn,
                  onChanged: (value) {
                    setState(() {
                      selectedOptn = value!;
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

class ExxKFS extends StatefulWidget {
  const ExxKFS({Key? key}) : super(key: key);

  @override
  State<ExxKFS> createState() => _ExxKFSState();
}

class _ExxKFSState extends State<ExxKFS> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: const Text('Switch'),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
          child: Column(
            children: [
              ListTile(
                title: const Text('Nyatakan Notifikasi'),
                leading: Switch(
                  value: isSwitch,
                  onChanged: (value) {
                    setState(() {
                      isSwitch = value;
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
