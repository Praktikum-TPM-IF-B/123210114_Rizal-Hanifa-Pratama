import 'package:flutter/material.dart';

class TemanPage extends StatelessWidget {
  final Teman teman;

  TemanPage({required this.teman});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Detail Teman'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nama: ${teman.nama}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'NIM: ${teman.nim}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Tahun Masuk: ${teman.tahunMasuk}',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}