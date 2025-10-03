import 'dart:io';

void main() {
  Map<String, int> makanan = {
    "express bowl ayam": 22000,
    "spaghetti bolognaise": 22000,
    "mie ayam teriaki": 35000,
    "chicken mozarella": 48000,
    "bihun ayam pangsit rebus": 36000,
    "mie ayam solaria spesial (pedas)": 26000,
    "nasi goreng special": 36000,
    "nasi bistik sapi mentega": 45000
  };

  Map<String, int> minuman = {
    "blueberry iced biended": 25000,
    "taro milk shake": 25000,
    "Air Mineral": 11000,
    "kopi vietnam": 21000,
    "es lemon tea": 17000,
    "ice tea green": 13000,
    "es teh tawar": 9000
  };

  bool lanjut = true;

  while (lanjut) {
    int total = 0;

    print("===== DAFTAR MENU SOLARIA =====");
    print("\nDaftar Makanan:");
    int index = 1;
    makanan.forEach((nama, harga) {
      print("$index. $nama - Rp$harga");
      index++;
    });

    print("\nDaftar Minuman:");
    minuman.forEach((nama, harga) {
      print("$index. $nama - Rp$harga");
      index++;
    });
    stdout.write("\nBerapa banyak item yang ingin dipesan? ");
    int jumlahPesanan = int.parse(stdin.readLineSync()!);

    for (int i = 1; i <= jumlahPesanan; i++) {
      stdout.write("Pilih nomor menu ke-$i: ");
      int pilihan = int.parse(stdin.readLineSync()!);

      List<MapEntry<String, int>> semuaMenu =
          [...makanan.entries, ...minuman.entries];

      if (pilihan >= 1 && pilihan <= semuaMenu.length) {
        var menuDipilih = semuaMenu[pilihan - 1];
        stdout.write("Berapa porsi ${menuDipilih.key}? ");
        int porsi = int.parse(stdin.readLineSync()!);

        int subtotal = menuDipilih.value * porsi;
        total += subtotal;
        print("${menuDipilih.key} x$porsi = Rp$subtotal\n");
      } else {
        print("Pilihan tidak valid!\n");
      }
    }

    print("Total yang harus dibayar: Rp$total");

    stdout.write("Masukkan jumlah uang pembayaran: Rp");
    int bayar = int.parse(stdin.readLineSync()!);

    if (bayar >= total) {
      int kembalian = bayar - total;
      print("Pembayaran berhasil! Kembalian Anda: Rp$kembalian");
    } else {
      print("Uang tidak cukup! Transaksi dibatalkan.");
    }

    stdout.write("\nApakah ingin memesan lagi? (y/ya/n/tidak): ");
    String jawaban = stdin.readLineSync()!.toLowerCase();

    if (jawaban == "y" || jawaban == "ya") {
      lanjut = true; 
    } else {
      lanjut = false;
      print("Terima kasih sudah berkunjung ke restoran kami!");
    }
  }
}
