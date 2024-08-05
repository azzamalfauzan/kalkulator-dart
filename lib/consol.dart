void main() {

  // menghitung luas menggunakkan function
  // kotak 1
  int kotak1 = hitungLuas(8, 9);
  print(kotak1);

  int kotak2 = hitungLuas(4, 6);
  print(kotak2);

}

int hitungLuas(int panjang, int lebar) {
  return panjang * lebar;

  
}

String sayHello(String name) {
  String hello = 'Hello $name';
  return hello;
}