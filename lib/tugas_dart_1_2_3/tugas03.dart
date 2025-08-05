void main(){
      // Soal 1 - Menampilkan bilangan ganjil
      print("---------------------------------");

      for (int j = 1; j <= 20; j += 2){
        print ("Bilangan Ganjil ke-$j ");
      }

      print("---------------------------------");

      // Soal 2 - Mencetak Karakter
      String bintang = "";
      for (int i = 1; i <= 5; i++){
        bintang += '*';
      } print (bintang);

      print("---------------------------------");
      
      // Soal 3 - Nama Berulang
      int a = 1;
      while (a <= 4) {
      print("$a. Aisyah");
      a++;
    }

    print("---------------------------------");

      // Soal 4 - Perulangan dalam List
      List<String> buah = ["Apel", "Jeruk", "Mangga", "Anggur" ];
      for (var n in buah){
        print("Saya suka $n");
      }

      print("---------------------------------");

      // Soal 5 - Simulasi daftar belanja menggunakan loop
      List<String> daftarBelanja = ["Beras", "Minyak", "Sayur", "Perkakas"];
      int index = 1;
      for (var p in daftarBelanja){
        print("Item ke-$index: $p");
        index++;
      }
}