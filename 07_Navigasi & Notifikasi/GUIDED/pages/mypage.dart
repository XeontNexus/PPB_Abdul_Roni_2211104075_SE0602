import 'package:flutter/material.dart';
import 'package:prak_7/pages/detailpage.dart';
import 'package:prak_7/models/product.dart';

class Mypage extends StatelessWidget {
  Mypage({super.key});

  final List<Product> Products = [
    Product(
      id: 1,
      nama: 'headset gaming cihuyyy',
      harga: 999999999,
      gambarUrl:
          "https://m.media-amazon.com/images/I/61CGHv6kmWL.AC_UF894,1000_QL80.jpg",
      deskripsi:
          'keyboard mayan bagus gak usah ambil, pernah dipakai sumanto ya kali gak beli 😍😍😍',
    ),
    Product(
      id: 2,
      nama: 'mouse gaming dari magelang',
      harga: 10,
      gambarUrl:
          "https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g502x-plus/gallery/g502x-plus-gallery-1-black.png?v=1",
      deskripsi:
          'kamu sering diejek aim jelek saat main valo???, jgn kawatir maouse ini akan membuat lawan kamu ketar ketir dengan mode aim barumu',
    ),
    Product(
      id: 3,
      nama: 'keyboard gaming tergaming',
      harga: 1000000010,
      gambarUrl:
          "https://resource.logitech.com/w_1600,c_limit,q_auto,f_auto,dpr_1.0/d_transparent.gif/content/dam/logitech/en/products/keyboards/mx-mechanical/gallery/mx-mechanical-keyboard-top-view-graphite-us.png?v=1&quot'",
      deskripsi:
          'kalian lapar ?, kalian wibu ingin istri animek ?, kalian ingin apa yang anda ketik menjadi kenyataan? maka keyboard ini cocok untuk anda',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('class model'),
        centerTitle: true,
        backgroundColor: Colors.blue[400],
      ),
      body: ListView.builder(
        itemCount: Products.length,
        itemBuilder: (context, index) {
          final Product = Products[index];
          return ListTile(
            leading: Image.network(
              Product.gambarUrl,
              width: 70,
              height: 70,
            ),
            title: Text(Product.nama),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Rp${Product.harga}'),
                Text('deskripsi: ${Product.deskripsi}'),
              ],
            ),
            onTap: () {
              print('tap layar berhasil');
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Detailpage(
                    data:'ini adalah data dari mypage' ,
                    //data:icon(icon.notification_outlined),
                    ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
