import 'dart:io';

void main() {
  stdout.write("Masukkan skor (0 - 100): ");
  String? input = stdin.readLineSync();
  int? skor = int.tryParse(input ?? "");

  if (skor == null || skor < 0 || skor > 100) {
    print("❌ Input tidak valid. Skor harus berupa angka 0 - 100.");
    return; 
  }
  String grade;
  if (skor >= 85) {
    grade = "A";
  } else if (skor >= 70) {
    grade = "B";
  } else if (skor >= 60) {
    grade = "C";
  } else if (skor >= 50) {
    grade = "D";
  } else {
    grade = "E";
  }
  print("Skor Anda: $skor");
  print("Grade Anda: $grade");

}