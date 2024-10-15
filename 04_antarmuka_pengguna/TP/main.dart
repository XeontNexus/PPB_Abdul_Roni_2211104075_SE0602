import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rekomendasi Wisata'),
          backgroundColor: const Color.fromARGB(255, 4, 164, 239),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Judul Tempat Wisata
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'sala tiga',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 16),

              // Gambar Tempat Wisata
              Image.network(
                'https://asset.kompas.com/crops/25hhF38dli3VSfKY5g8lIbzRDxA=/0x0:1000x667/750x500/data/photo/2022/05/01/626e236fbfeb9.png', 
                height: 200,
                fit: BoxFit.cover, // Mengatur tampilan gambar agar lebih baik
              ),
              SizedBox(height: 16),

              // Deskripsi Tempat Wisata
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Kami berangkat pagi hari untuk menikmati liburan ke Salatiga.'
                  'Gunung-gunung tinggi tampak megah saat memasuki kota yang sejuk.'
                  'Jalanan lengang, angin sepoi-sepoi menemani perjalanan kami ke hotel.'
                  'Kami tiba di penginapan dengan pemandangan danau yang indah sekali.'
                  'Di Salatiga, kami mencoba kuliner khas yang lezat dan unik.'
                  'Wisata alam di kaki Gunung Merbabu membuat suasana semakin menyegarkan.'
                  'Hari kedua kami mengunjungi kebun teh yang luas dan hijau.'
                  'Sore hari, kami bersantai di taman kota sambil menikmati kopi.'
                  'Liburan di Salatiga benar-benar memberi ketenangan dari hiruk pikuk kota.'
                  'Sebelum pulang, kami sempat membeli oleh-oleh khas untuk keluarga.',
                  textAlign: TextAlign.justify, // Meratakan teks
                ),
              ),
              SizedBox(height: 16),

              // Tombol Kunjungi
              ElevatedButton(
                onPressed: () {
                  // Tambahkan kode tindakan di sini!
                },
                child: Text('Kunjungi Sekarang'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
