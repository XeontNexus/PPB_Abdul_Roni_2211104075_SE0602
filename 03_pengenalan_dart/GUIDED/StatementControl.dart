void main() {
  var open = 8;
  var close = 17;
  var now = 20;

  if (now >= open && now <= close) {
    print("We're open");
  } else {
    print("Sorry, we're closed");
  }

// condition ? true : false
  var toko = now > open ? 'Toko buka' : 'Toko tutup';
  print(toko);

  var nilai = 'a';

  switch (nilai) {
    case 'a':
      print('Nilai yang sangat bagus');
      break;
    case 'b':
      print('Nilai WAJIB perbaikan');
      break;
    case 'c':
      print('Nilai wajib perbaikan dan tambah tugas');
    default:
      print('Nilai default');
  }
} // End of Main