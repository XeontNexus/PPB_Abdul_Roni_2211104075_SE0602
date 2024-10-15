import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata pekanbaru',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rekomendasi Wisata pekanbaru'),
          backgroundColor: const Color.fromARGB(255, 228, 164, 185),
        ),
        body: TempatWisataList(),
      ),
    );
  }
}

class TempatWisataList extends StatelessWidget {
  final List<Map<String, String>> tempatWisata = [
    {
      'nama': 'kampung kecil',
      'gambar':
          'https://cdn.idntimes.com/content-images/community/2023/10/hhengkii-kampung-kecil-9deb81ce0f3403c17a9e0e47c28e69a0-7a75ff54a1966d07549119f0afcbb259.png',
      'deskripsi':
          'Tempat makan ini menyediakan berbagai macam menu, seperti gurame selimut kangkung, teri pete balado, pindang patin, cumi cobek emrtua, dan lainnya. Selain itu, coba juga es teler dengan topping buah-buahan dan susu yang creamy serta sirup pandan.'
              'Artikel ini telah tayang di Idntimes.com dengan judul "5 Tempat Makan Keluarga di Pekanbaru, Suasananya Hangat",'
              'Klik untuk baca: https://www.idntimes.com/food/dining-guide/hamdiki/tempat-makan-keluarga-di-pekanbaru-c1c2. Bayan merupakan salah satu obyek wisata di lereng Gunung Slamet yang menarik untuk dikunjungi bersama keluarga. Kawasan wisata ini cocok untuk melepas penat dari rutinitas.',
    },
    {
      'nama': 'rumah makan uhuy',
      'gambar':
          'https://cdn.idntimes.com/content-images/community/2023/10/abfoodiary-okinawa-sushi-9deb81ce0f3403c17a9e0e47c28e69a0-a4ae8916357e657995f83167cdd7e982.png',
      'deskripsi': 'rumah makan penuh gelak tawa gak ketawa bayar.',
    },
    {
      'nama': 'rumah makan serba durian',
      'gambar':
          'https://cdn.idntimes.com/content-images/community/2023/10/pipingoldfish-durian-runtuh-9deb81ce0f3403c17a9e0e47c28e69a0-58291e4d9bac70d4d377ed77d2721c70.png',
      'deskripsi': 'apapun tentang durian.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tempatWisata.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  tempatWisata[index]['nama']!,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Image.network(
                tempatWisata[index]['gambar']!,
                height: 200,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  tempatWisata[index]['deskripsi']!,
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  // Tambahkan aksi saat tombol diklik
                },
                child: Text('Kunjungi Sekarang'),
              ),
              SizedBox(height: 8),
            ],
          ),
        );
      },
    );
  }
}
