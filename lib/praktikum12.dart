import 'package:flutter/material.dart';

class Praktikum12 extends StatelessWidget {
  const Praktikum12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktikum 12'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Passing Data dan TextEditingController',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PSDDB()),
                );
              },
              child: const Text('Dropdown'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const PSRB()),
                  (route) => false,
                );
              },
              child: const Text('Radio Button'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const PSCB()),
                  (route) => false,
                );
              },
              child: const Text('Checkbox'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const PSTEC()),
                  (route) => false,
                );
              },
              child: const Text('TextFormField'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Kembali'),
            ),
          ),
        ],
      ),
    );
  }
}

class PSDDB extends StatefulWidget {
  const PSDDB({Key? key}) : super(key: key);

  @override
  State<PSDDB> createState() => _PSDDBState();
}

class _PSDDBState extends State<PSDDB> {
  String selectedItem = '--- Pilih Buah ---';
  final List<String> itemValue = [
    '--- Pilih Buah ---',
    'Anggur',
    'Bluberry',
    'Cherry',
    'Durian'
  ];
  String vsi = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dropdown Button')),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: DropdownButton<String>(
              items: itemValue.map((String imValue) {
                return DropdownMenuItem(value: imValue, child: Text(imValue));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedItem = value!;
                });
              },
              value: selectedItem,
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  vsi = 'Buah yang aku suka adalah $selectedItem';
                });
              },
              child: const Text('Tampilkan'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  vsi = '';
                });
              },
              child: const Text('Clear'),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(10),
            child: Text(vsi),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Kembali'),
            ),
          ),
        ],
      ),
    );
  }
}

class PSRB extends StatefulWidget {
  const PSRB({Key? key}) : super(key: key);

  @override
  State<PSRB> createState() => _PSRBState();
}

class _PSRBState extends State<PSRB> {
  String selectedOptn = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Button'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text('Pilih Poli:'),
          ),
          Column(
            children: [
              ListTile(
                title: const Text('Poli Mata'),
                leading: Radio(
                  value: 'Poli Mata',
                  groupValue: selectedOptn,
                  onChanged: (value) {
                    setState(() {
                      selectedOptn = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Poli Gigi'),
                leading: Radio(
                  value: 'Poli Gigi',
                  groupValue: selectedOptn,
                  onChanged: (value) {
                    setState(() {
                      selectedOptn = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Poli THT'),
                leading: Radio(
                  value: 'Poli THT',
                  groupValue: selectedOptn,
                  onChanged: (value) {
                    setState(() {
                      selectedOptn = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Poli Obgyn'),
                leading: Radio(
                  value: 'Poli Obgyn',
                  groupValue: selectedOptn,
                  onChanged: (value) {
                    setState(() {
                      selectedOptn = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Poli Umum'),
                leading: Radio(
                  value: 'Poli Umum',
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
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PSCM(sTeks: selectedOptn),
                  ),
                );
              },
              child: const Text('Tampilkan'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Kembali'),
            ),
          ),
        ],
      ),
    );
  }
}

class PSCM extends StatelessWidget {
  const PSCM({Key? key, required this.sTeks}) : super(key: key);
  final String sTeks;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('View Passing Data')),
      body: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.all(10),
        child: Text(
          'Poli yang dipilih adalah $sTeks',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class PSCB extends StatefulWidget {
  const PSCB({Key? key}) : super(key: key);

  @override
  State<PSCB> createState() => _PSCBState();
}

class _PSCBState extends State<PSCB> {
  bool isCheck1 = false;
  bool isCheck2 = false;
  bool isCheck3 = false;
  bool isCheck4 = false;
  bool isCheck5 = false;
  var lteks = [];
  String teks = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check Box'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text('Pilih Hobi'),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(90, 10, 90, 10),
            child: Column(
              children: [
                ListTile(
                  title: const Text('Lari'),
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
                  title: const Text('Renang'),
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
                  title: const Text('Badminton'),
                  leading: Checkbox(
                    value: isCheck3,
                    onChanged: (value) {
                      setState(() {
                        isCheck3 = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Sepak Bola'),
                  leading: Checkbox(
                    value: isCheck4,
                    onChanged: (value) {
                      setState(() {
                        isCheck4 = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Sepeda'),
                  leading: Checkbox(
                    value: isCheck5,
                    onChanged: (value) {
                      setState(() {
                        isCheck5 = value!;
                      });
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      if (isCheck1 == true) {
                        lteks.add('Lari');
                      }
                      if (isCheck2 == true) {
                        lteks.add('Renang');
                      }
                      if (isCheck3 == true) {
                        lteks.add('Badminton');
                      }
                      if (isCheck4 == true) {
                        lteks.add('Sepak Bola');
                      }
                      if (isCheck5 == true) {
                        lteks.add('Sepeda');
                      }

                      if (lteks.length > 5) {
                        teks =
                            '${lteks[0]}, ${lteks[1]}, ${lteks[2]}, ${lteks[3]} dan ${lteks[4]}';
                      } else if (lteks.length == 4) {
                        teks =
                            '${lteks[0]}, ${lteks[1]}, ${lteks[2]} dan ${lteks[3]}';
                      } else if (lteks.length == 3) {
                        teks = '${lteks[0]} dan ${lteks[1]}';
                      } else if (lteks.length == 2) {
                        teks = lteks[0];
                      } else if (lteks.length == 1) {
                        teks = lteks[0];
                      }

                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PSRB(),
                          settings: RouteSettings(arguments: teks),
                        ),
                        (route) => false,
                      );
                    },
                    child: const Text('Tampilkan'),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Praktikum12(),
                        ),
                        (route) => false,
                      );
                    },
                    child: const Text('Kembali'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PSRM extends StatefulWidget {
  const PSRM({Key? key}) : super(key: key);

  @override
  State<PSRM> createState() => _PSRMState();
}

class _PSRMState extends State<PSRM> {
  String? sTeks;

  @override
  Widget build(BuildContext context) {
    sTeks = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Passing Data'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.all(10),
            child: Text(
              'Hobi yang disukai adalah $sTeks',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const PSCB()),
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

class PSTEC extends StatefulWidget {
  const PSTEC({Key? key}) : super(key: key);

  @override
  State<PSTEC> createState() => _PSTECState();
}

class _PSTECState extends State<PSTEC> {
  TextEditingController tecTeks = TextEditingController();
  String stks = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextEditingController')),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: tecTeks,
              autofocus: true,
              decoration: InputDecoration(
                labelText: 'Matakuliah',
                hintText: 'Inputkan mata kuliah yang disukai',
                icon: const Icon(Icons.book),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  stks = tecTeks.text;
                });
              },
              child: const Text('Tampilkan'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const Praktikum12()),
                  (route) => false,
                );
              },
              child: const Text('Kembali'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: Text(stks),
          ),
        ],
      ),
    );
  }
}
