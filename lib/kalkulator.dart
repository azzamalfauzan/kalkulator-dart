import 'dart:io';

void main() {
  while (true) {
    print('===== Kalkulator =====');
    print('Pilih operasi:');
    print('1. Penjumlahan');
    print('2. Pengurangan');
    print('3. Perkalian');
    print('4. Pembagian');
    print('5. Keluar');

    stdout.write('Masukkan pilihan (1-5): ');
    String? pilihan = stdin.readLineSync();

    if (pilihan == '5') {
      print('Sekian.');
      break;
    }

    stdout.write('Masukkan angka pertama: ');
    double? angka1 = double.tryParse(stdin.readLineSync()!);

    stdout.write('Masukkan angka kedua: ');
    double? angka2 = double.tryParse(stdin.readLineSync()!);

    if (angka1 == null || angka2 == null) {
      print('Input tidak valid. Silakan masukkan angka.');
      continue;
    }

    double hasil;
    switch (pilihan) {
      case '1':
        hasil = angka1 + angka2;
        print('Hasil penjumlahan: $hasil');
        break;
      case '2':
        hasil = angka1 - angka2;
        print('Hasil pengurangan: $hasil');
        break;
      case '3':
        hasil = angka1 * angka2;
        print('Hasil perkalian: $hasil');
        break;
      case '4':
        if (angka2 == 0) {
          print('Pembagian dengan nol tidak diperbolehkan.');
        } else {
          hasil = angka1 / angka2;
          print('Hasil pembagian: $hasil');
        }
        break;
      default:
        print('Pilihan tidak valid.');
        break;
    }

    print(''); // Baris kosong untuk memisahkan setiap iterasi
  }
}
