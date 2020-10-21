import 'package:flutter_submissions/models/models.dart';

class WordData {
  List<DataModels> _list = [
    DataModels(
        no: "1",
        judul: "Pengenalan Ms. Word",
        desk1:
            "Microsoft word adalah suatu software yang sering digunakan untuk mengolah kata atau membuat dokumen baru. Microsoft word termasuk microsoft office yang sering di gunakan di leptop dan di komputer. Microsoft office terbagi menjadi beberapa software seperti microsoft word, microsoft excel, microsoft power point, microsoft accses",
        desk2:
            "Dengan adanya software microsoft word kita mudah mengerjakan sesuatu dengan cepat. Software  MS word mudah dapat kita jumpai dimana saja, misalnya di leptop dan di komputer. Banyak orang menggunakan MS word untuk mengerjakan sesuatu dengan cepat, Misalnya: Pembuatan Dokumen Baru, Pembuatan Surat, Pembuatan Proposal, Pembuatan Surat Lamaran Kerja,Pembutan Sikripsi, Pembuatan Tugas."),
    DataModels(
        no: "2",
        judul: "Memulai Ms. Word",
        desk1:
            "1. Membuka Microsoft Word 2007, 2010, dan 2013 di Windows XP dan 7\n, Klik menu START -> Pilih All Program -> Kemudian pilih Microsoft Office -> Pilih Microsoft Office Word 2007 -> Maka jendela Microsoft Word akan terbuka.",
        desk2:
            "2. Membuka Microsoft Word 2016 di Windows 8 dan 10\nKlik menu START-> Pilih All Apps -> Pilih Word 2016 -> Maka jendela Microsoft Word akan terbuka.",
        desk3:
            "3. Membuka Microsoft Word Melalui Shortcut di Desktop\nKita dapat melakukan klik dua kali (double clicks) pada shortcut Microsoft Word yang telah ada di desktop untuk mempercepat membuka aplikasi Microsoft Word.",
        imgUrl3: "images/shortcut_ms_word.png",
        desk4:
            "4. Cara Membuat Dokumen Baru pada Microsoft Word\nSaat kita membuka aplikasi Microsoft Word, kita secara bersamaan telah membuat dokumen baru yang berjudul \"Document1\" Jika kita ingin membuat dokumen baru lagi dapat menggunakan langkah berikut: Klik Ribbon File -> Pilih New -> Pilih Blank Document -> Maka akan dibuat dokumen baru berikutnya.",
        desk5:
            "5. Shortcut Membuat Dokumen Baru Microsoft Word\nKita dapat menggunakan shortcut keyboard CTRL + N untuk membuat dokumen baru pada Microsoft Word"),
    DataModels(
        no: "3",
        judul: "Mengenal Tampilan Ms. Word",
        desk1:
            "1. Tombol Office (Office Button) \nOffice button merupakan tombol yang berisi perintah-perintah yang berkaitan dengan dokumen seperti membuat dokumen baru (New), membuka dokumen (Open), menyiman dokumen (Save), mencetak dokumen (Print), menutup dokumen (Close) dan sebagainya.",
        desk2:
            "2. Baris Judul (Title Bar) \nBaris judul (title bar) berfungsi untuk menampilkan nama dokumen yang sedang aktif di jendela word. Nama dokumen tersebut sesuai dengan nama file dari dokumen tersebut. Apabila dokumen yang ditampilkan belum pernah disimpan, nama dokumen yang ditampilkan adalah Document 1, Document 2, Document 3, dan seterusnya",
        desk3:
            "3. Kontrol Jendela\nKontrol jendela merupakan tombol yang berada sebarus dengan baris judul (title bar) yang terletak di bagian kanan atas.",
        desk4:
            "4. Quick Access Toolbar\nQuick access toolbar berisi tombol-tombol yang berfungsi sebagai alternatif penggunaan perintah yang sering digunakan.",
        desk5:
            "5. Baris Menu (Menu Bar)\nBaris menu (menu bar) berisi barisan perintah berupa menu, meliputi Home, Insert, Page Layout, References, Mailings, Review, View, dan Add-Ins."),
    DataModels(
        no: "4",
        judul: "Mengenal Ribbon dan Kegunaanya",
        imgUrl1: "images/ribbon.png",
        desk1:
            "Ribbon berisi perintah-perintah khusus yang merupakan submenu dari menu bar. Pada Microsoft Word sebelumnya, ribbon ini disebut sebagai toolbar. Berikut ini adalah contoh ribbon dari menu Home,"),
    DataModels(
        no: "5",
        judul: "Menu Tombol Office",
        imgUrl1: "images/officebutton.gif",
        desk1:
            "Office button merupakan tombol yang berisi perintah-perintah yang berkaitan dengan dokumen seperti membuat dokumen baru (New), membuka dokumen (Open), menyiman dokumen (Save), mencetak dokumen (Print), menutup dokumen (Close) dan sebagainya.")
  ];

  List getDataWord() {
    return _list;
  }
}
