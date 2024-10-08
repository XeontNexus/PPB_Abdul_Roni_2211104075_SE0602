import 'dart:io';

void main() {
  // Meminta input nilai dari pengguna
  print('Masukkan nilai siswa (0 - 100): ');
  var input = stdin.readLineSync();

  // Konversi input ke dalam tipe double
  double? nilai = double.tryParse(input!);

  // Memeriksa apakah input valid
  if (nilai == null) {
    print('Nilai yang dimasukkan tidak valid.');
  } else if (nilai >= 60 && nilai <= 100) {
    print('Siswa lulus dengan nilai: $nilai');
  } else if (nilai >= 0 && nilai < 60) {
    print('Siswa tidak lulus dengan nilai: $nilai');
  } else {
    print('Nilai di luar rentang yang valid.');
  }
}
