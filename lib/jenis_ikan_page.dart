import 'package:flutter/material.dart';

class JenisIkanPage extends StatelessWidget {
  final List<String> jenisIkan = [
    'Ikan Laut',
    'Ikan Laut',
    'Ikan Laut',
    'Ikan Laut',
    'Ikan Laut',
    'Ikan Laut',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jenis Ikan'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10.0),
        itemCount: jenisIkan.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(
                    'https://via.placeholder.com/100'), // Ganti dengan gambar ikan yang sesuai
                Text(jenisIkan[index]),
              ],
            ),
          );
        },
      ),
    );
  }
}
