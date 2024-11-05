
class Product {
  final int id;
  final String nama;
  final double harga;
  final String gambarUrl;
  final String deskripsi;

  //construktor
  Product({
    required this.id,
    required this.nama,
    required this.harga,
    required this.gambarUrl,
    required this.deskripsi,
  });

  //method unutk mengkonversi JSON => object produk
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      nama: json['nama'],
      harga: json['harga'],
      gambarUrl: json['gambarUrl'],
      deskripsi: json['deskripsi'],
    );
  }

  //method untuk mengkonversi boject product => JSON

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nama': nama,
      'harga': harga,
      'gambarUrl': gambarUrl,
      'deskripsi': deskripsi,
    };
  }
}
