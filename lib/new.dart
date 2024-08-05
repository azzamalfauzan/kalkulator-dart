import 'dart:io';

void main() {
  // Meminta pengguna untuk memasukkan nama
  stdout.write('Sahril Shobirin: ');
  String? nama = stdin.readLineSync();

  // Menampilkan pesan sambutan
  if (nama != null && nama.isNotEmpty) {
    print('Halo, $nama! Selamat datang di program Dart sederhana.');
  } else {
    print('Sahril Shobirin.');
  }
}