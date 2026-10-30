import 'package:flutter/material.dart';


const Color warnaLatar = Color(0xFF290044);
const Color warnaElemen = Color(0xFF500071);
const Color warnaTeks = Colors.white;

class Statless1 extends StatelessWidget {
  const Statless1({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController(text: 'IWED');

    return Scaffold(
      backgroundColor: warnaLatar,
      appBar: AppBar(
        title: const Text(
          'Tugas File 1 - Stateless',
          style: TextStyle(color: warnaTeks, fontFamily: 'Nunito'),
        ),
        backgroundColor: warnaLatar,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Halaman Profil',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: warnaTeks,
                fontFamily: 'Nunito',
              ),
            ),
            const SizedBox(height: 15),

            const CircleAvatar(
              radius: 50,
              backgroundColor: warnaElemen,
              child: Icon(Icons.person, size: 60, color: warnaTeks),
            ),
            const SizedBox(height: 10),

            const Text(
              'MAHASISWA',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: warnaTeks,
                fontFamily: 'Nunito',
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 15),

            Card(
              color: warnaElemen,
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.email_outlined, color: warnaTeks),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            'TirexSukaMatcha@Student.alko.ac.id',
                            style: TextStyle(color: warnaTeks, fontFamily: 'Nunito', fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                    const Divider(color: warnaLatar, height: 20),

                    Row(
                      children: const [
                        Icon(Icons.phone_outlined, color: warnaTeks),
                        SizedBox(width: 12),
                        Text(
                          '085700001234',
                          style: TextStyle(color: warnaTeks, fontFamily: 'Nunito', fontSize: 14),
                        ),
                      ],
                    ),
                    const Divider(color: warnaLatar, height: 20),

                    Row(
                      children: const [
                        Icon(Icons.arrow_forward_outlined, color: warnaTeks),
                        SizedBox(width: 12),
                        Text(
                          '2026-05-05 23.20.10',
                          style: TextStyle(color: warnaTeks, fontFamily: 'Nunito', fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: 180,
                child: TextField(
                  controller: searchController,
                  style: const TextStyle(color: warnaTeks, fontFamily: 'Nunito', fontSize: 14),
                  decoration: InputDecoration(
                    hintText: 'Cari...',
                    hintStyle: const TextStyle(color: Colors.white54, fontFamily: 'Nunito'),
                    prefixIcon: const Icon(Icons.search, color: warnaTeks, size: 20),
                    filled: true,
                    fillColor: warnaElemen,
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Daftar Kartu Mahasiswa',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: warnaTeks,
                fontFamily: 'Nunito',
              ),
            ),
            const SizedBox(height: 10),

            const KartuMahasiswa(
              nama: 'Iwed aja',
              nim: '3012410021',
              prodi: 'Informatika',
            ),
            const KartuMahasiswa(
              nama: 'iwed Sintia',
              nim: '3012410022',
              prodi: 'Informatika',
            ),
            const KartuMahasiswa(
              nama: 'Iwed Sari',
              nim: '3012410023',
              prodi: 'Informatika',
            ),
          ],
        ),
      ),
    );
  }
}

class KartuMahasiswa extends StatelessWidget {
  final String nama;
  final String nim;
  final String prodi;

  const KartuMahasiswa({
    super.key,
    required this.nama,
    required this.nim,
    required this.prodi,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: warnaElemen,
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 6.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            const Icon(Icons.badge, size: 40, color: warnaTeks),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nama,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: warnaTeks,
                    fontFamily: 'Nunito',
                  ),
                ),
                Text('NIM   : $nim', style: const TextStyle(color: warnaTeks, fontFamily: 'Nunito')),
                Text('Prodi : $prodi', style: const TextStyle(color: warnaTeks, fontFamily: 'Nunito')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}