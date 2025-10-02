void main() {
 
  String nama = "Evriyanti La Wade";
  int jamKerja = 40;
  double upahPerJam = 50000;
  bool statusTetap = true; 
  double gajiKotor = jamKerja * upahPerJam;

  double pajak;
  if (statusTetap) {
    pajak = gajiKotor * 0.10; 
  } else {
    pajak = gajiKotor * 0.05;
  }
  double gajiBersih = gajiKotor - pajak;

  print("=== Aplikasi Penghitung Gaji Karyawan ===");
  print("Nama Karyawan : $nama");
  print("Gaji Kotor    : Rp $gajiKotor");
  print("Pajak         : Rp $pajak");
  print("Gaji Bersih   : Rp $gajiBersih");
}
