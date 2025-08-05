void main () {
  // Variabel awal yang telah ditentukan
  int nilai_uts = 80;
  int nilai_uas = 75;
  double kehadiran = 95.0;
    
    print("---------------------------------");

  // Menghitung rata-rata nilai akhir UTS & UAS
    double ratarata = (nilai_uts + nilai_uas) / 2;
    print("Nilai rata-rata UTS & UAS adalah = $ratarata");
    
    print("---------------------------------");

  void tampilkanData() {
    print("Keterangan Nilai:");
    print("Nilai UTS: $nilai_uts");
    print("Nilai UAS: $nilai_uas");
    print("Kehadiran: $kehadiran %");
  }
    
    print("---------------------------------");

  // Sistem penilaian Mahasiswa menggunakan Relational & Logical operator untuk mengecek syarat kelulusan
  void syaratKelulusan () {
    if (ratarata >= 70 && kehadiran >= 75 && nilai_uts >= 60 && nilai_uas >= 60)

  // Mencetak apakah mahasiswa LULUS atau TIDAK LULUS
    {
      print("Selamat, Anda dinyatakan LULUS");
    } else {
      print("Maaf, Anda dinyatakan TIDAK LULUS");
    }
  }
 
  tampilkanData();
  syaratKelulusan();

}