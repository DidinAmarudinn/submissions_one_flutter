import 'package:flutter_submissions/models/models.dart';

class ExcelData {
  List<DataModels> _list = [
    DataModels(
        no: "1",
        judul: "Pengenalan Microsoft Excel",
        desk1:
            " Microsoft Excel adalah General Purpose Electronic Spreadsheet yang dapat digunakan untuk mengorganisir, menghitung, menyediakan maupun menganalisa data-data dan mempresentasikannya ke grafik atau diagram. Kemudahan lain yang diperoleh dari program ini adalah terintegrasinya program Microsoft Excel dengan program aplikasi windows yang lain. Saat anda membuka Microsoft Excel maka sebuah buku kerja (Workbook) siap digunakan yang didalamnya terdapat beberapa lembar kerja (worksheet). Lembar keja dalam Microsoft Excel dalam satu sheet terdiri dari 256 kolom (columns) dan 65536 baris (rows). Kolom ditampilkan dalam tanda huruf A, B, C dan berakhir pada kolom IV. Sedangkan baris dilambangkan dalam bentuk angka 1, 2, 3 dan berakhir pada 65536. Perpotongan antara baris dan kolom disebut sel (cell), misal, pada perpotongan kolom B dengan baris ke 5 disebut sel B5. Dan sel yang bergaris tebal menandakan bahwa sel tersebut dalam keadaan aktif"),
    DataModels(
      no: "2",
      judul: "Fungsi Microsoft Excel",
      desk1:
          "Fungsi utama program microsoft excel adalah sebagai aplikasi atau software pengolah angka. Fungsi atau kegunaan microsoft excel dalam pekerjaan sehari-hari lainnya antara lain: Membuat, mengedit, mengurutkan, menganalisa, meringkas data. Melakukan perhitungan aritmatika dan statistika",
    ),
    DataModels(
        no: "3",
        judul: "Kelebihan dan Kekurangan Microsoft Excel",
        desk1:
            "Kelebihan Microsoft Excel: \n-Tampilan yang nyaman dan mudah digunakan\n-Dapat dipakai diberbagai OS mulai dari windows sampai Mac OS\n-Lisensi yang tersedia dalam jumlah grosir",
        desk2:
            "Kelemahan Microsoft Excel:\n-Akses fungsi yang terbatas\n-Add-ins yag kurang powerfull"),
    DataModels(
        no: "4",
        judul: "Istilah-istilah dalam Excel",
        desk1:
            "1. Cell : merupakan bagian terkecil dari worksheet yng dapat diisi dengan jumlah karakter (max. 255 karakter) isi cell dapat berupa value, formula atau text. Contoh : cell A3, cell D5",
        desk2:
            "2. Worksheet (lembar Kerja) : merupakan kumpulan dari 256 kolom dan 65536 baris.",
        desk3:
            "3. Workbook (buku kerja) : merupakan kumpulan dari 256 worksheet (berlabel sheet1 sampai sheet 256)",
        desk4:
            "4. Range : merupakan sekelompok cell yang akan mendapataksi sama sesuai perintah yang anda jalankan. Pemberian alamat/ address dilakukan mulai dari cell sudut kiri atas sampai cell sudut kanan bawah. Contoh : A4:D6 → range mulai dari cell A4 sampai cell D6 "),
    DataModels(
        no: "5",
        judul: "Penggunaan Rumus dan Fungsi",
        desk1:
            "Anda dapat membuat rumus sederhana untuk melakukan penambahan, pengurangan, pengalian, atau pembagian nilai dalam lembar kerja. Rumus sederhana selalu dimulai dengan tanda sama dengan (=), diikuti oleh konstanta yang berupa nilai numerik dan operator penghitungan seperti tanda plus (+), minus (-), tanda bintang(*), atau garis miring (/)."),
  ];
  List getExcelData() {
    return _list;
  }
}
