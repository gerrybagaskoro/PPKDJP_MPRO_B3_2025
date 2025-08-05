void main() {
  String nama = "Gerry Bagaskoro Putro"; /// String digunakan untuk menyimpan teks
  int usia = 24; /// Integer digunakan untuk menyimpan bilangan bulat (tanpa koma)
  double tinggiBadan = 170.0;  /// Double digunakan untuk menyimpan bilangan desimal
  bool statusAktif = true; /// Boolean digunakan untuk mengambil keputusan (if-else)
  List<String> bukuFavorit = ["Laskar Pelangi", "The art of Ikigai" ];
  print("Nama: $nama");
  print("Usia: $usia");
  print("Tinggi: $tinggiBadan");
  print("Aktif: $statusAktif");
  print("Buku favorit saya: ${bukuFavorit[1]}");
  /*
  Daftar buku favorit menggunakan variabel List
  */
  Map<String, dynamic> biodata = {
    "alamat_rumah": "Duren Sawit, Jakarta Timur",
    "kode_pos": "13460",
    "profesi_jabatan": "Pekerja Lepas"
  };
  {
    print("Alamat: ${biodata['alamat_rumah']}");
    print("Kode Pos: ${biodata['kode_pos']}");
    print("Profesi: ${biodata['profesi_jabatan']}");
  }

/*
Informasi tambahan seperti Alamat, Profesi disimpan dalam bentuk variabel Map
*/

  void tampilkanBiodata() 
  { 
    print("Nama: $nama");
    print("Usia: $usia");
    print("Tinggi: $tinggiBadan");
    print("Aktif: $statusAktif");
    print("Alamat: ${biodata['alamat_rumah']}");
    print("Kode Pos: ${biodata['kode_pos']}");
    print("Profesi: ${biodata['profesi_jabatan']}");
    }
 tampilkanBiodata();
}

/*
Fungsi tampilkanBiodata() menampilkan seluruh data
*/
