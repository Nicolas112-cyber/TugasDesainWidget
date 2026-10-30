import 'package:flutter/material.dart';

const Color warnaLatar = Color(0xFF290044);
const Color warnaElemen = Color(0xFF500071);
const Color warnaTeks = Colors.white;

class Statless2 extends StatefulWidget {
  const Statless2({super.key});

  @override
  State<Statless2> createState() => _Statless2State();
}

class _Statless2State extends State<Statless2> {
  int _counter = 0;

  void _tambah() {
    setState(() {
      _counter++;
    });
  }

  void _kurang() {
    setState(() {
      _counter--;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: warnaLatar,
      appBar: AppBar(
        title: const Text(
          'Tugas File 2 - Stateful Counter',
          style: TextStyle(color: warnaTeks, fontFamily: 'Nunito'),
        ),
        backgroundColor: warnaLatar,
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            color: warnaElemen,
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Nilai Counter saat ini:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: warnaTeks,
                      fontFamily: 'Nunito',
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    '$_counter',
                    style: const TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: warnaTeks,
                      fontFamily: 'Nunito',
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        onPressed: _kurang,
                        icon: const Icon(Icons.remove, color: warnaTeks),
                        label: const Text(
                          'Kurang',
                          style: TextStyle(color: warnaTeks, fontFamily: 'Nunito'),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: warnaLatar,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton.icon(
                        onPressed: _reset,
                        icon: const Icon(Icons.refresh, color: warnaTeks),
                        label: const Text(
                          'Reset',
                          style: TextStyle(color: warnaTeks, fontFamily: 'Nunito'),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: warnaLatar,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton.icon(
                        onPressed: _tambah,
                        icon: const Icon(Icons.add, color: warnaTeks),
                        label: const Text(
                          'Tambah',
                          style: TextStyle(color: warnaTeks, fontFamily: 'Nunito'),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: warnaLatar,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}