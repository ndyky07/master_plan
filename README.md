Nama: Indi Warda Ramadhani
<br>NIM: 2341760026
<br>Kelas: SIB 3D
<br>Mata Kuliah: Pemrograman Mobile

**Dasar Manajemen State di Flutter**

**Praktikum 1: Dasar State dengan Model-View**

Langkah 1: Buat Project Baru

![master_plan](images/01.png)

Langkah 2: Membuat model task.dart

![master_plan](images/02.png)

Langkah 3: Buat file plan.dart

![master_plan](images/03.png)

Langkah 4: Buat file data_layer.dart

![master_plan](images/04.png)

Langkah 5: Pindah ke file main.dart

![master_plan](images/05.png)

Langkah 6: buat plan_screen.dart

![master_plan](images/06.png)

Langkah 7: buat method _buildAddTaskButton()

![master_plan](images/07.png)

Langkah 8: buat widget _buildList()

![master_plan](images/08.png)

Langkah 9: buat widget _buildTaskTile

![master_plan](images/09.png)

![master_plan](images/10.png)

Langkah 10: Tambah Scroll Controller

![master_plan](images/11.png)

Langkah 11: Tambah Scroll Listener

![master_plan](images/12.png)

Langkah 12: Tambah controller dan keyboard behavior

![master_plan](images/13.png)

Langkah 13: Terakhir, tambah method dispose()

![master_plan](images/14.png)

Langkah 14: Hasil

![master_plan](images/15.png)

**Tugas Praktikum 1: Dasar State dengan Model-View**

1.	Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki.

![master_plan](images/16.gif)

Aplikasi Master Plan menampilkan daftar tugas dengan checkbox dan tombol "+" untuk tambah tugas baru, dilengkapi AppBar ungu bertuliskan "Master Plan Indi". initState() mengonfigurasi scrollController agar keyboard otomatis tertutup saat scroll, sementara dispose() membersihkannya untuk cegah kebocoran memori.

2.	Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?

File data_layer.dart dibuat khusus untuk mengelompokkan semua file model yang dipakai di proyek Flutter (contohnya plan.dart serta task.dart), sehingga aksesnya bisa dilakukan hanya dari satu titik saja. Manfaat utamanya meliputi: · Memudahkan dalam mengatur model data secara terpusat. · Mengurangi kebutuhan menulis ulang import di berbagai file. · Mempertahankan organisasi proyek agar tetap terstruktur dan mudah dikembangkan. Kata kunci export dalam Dart berperan untuk mendistribusikan (mengekspor) isi file ke file lain yang mengimpor data_layer.dart. Secara ringkas: · Import = mengambil potongan kode dari file eksternal untuk dipakai. · Export = menyediakan kode agar bisa diakses oleh file lain.

3.	Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?

Variabel plan berfungsi untuk menyimpan informasi inti dari aplikasi, yakni rencana (plan) yang mencakup seluruh daftar tugas (tasks). Setiap modifikasi seperti penambahan, pengubahan, atau penandaan tugas akan tercatat langsung di variabel plan ini. Variabel plan diciptakan untuk menampung kumpulan rencana maupun tugas. Mengingat saat aplikasi pertama kali diluncurkan, isinya masih nihil dan belum mengalami perubahan, maka dipilih const supaya lebih hemat sumber daya dan mempercepat proses rendering tampilan oleh Flutter.

4.	Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

Aplikasi Master Plan memamerkan daftar tugas lengkap dengan opsi centang serta tombol “+” guna menambahkan item tugas anyar. Desainnya dilengkapi AppBar berwarna ungu dengan teks judul “Master Plan Indi”. Fungsi initState() dimanfaatkan untuk mengonfigurasi scrollController sehingga keyboard akan otomatis hilang saat pengguna menggulir, sementara dispose() bertugas membebaskan scrollController demi mencegah pemborosan memori.

5.	Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?

Di Tahap 11, method initState() dipakai untuk mengeksekusi instruksi awal tepat setelah halaman dibuat. Khususnya, initState() di sini mengatur inisialisasi scrollController serta memasang listener, sehingga ketika pengguna menggulir, keyboard akan menutup sendiri. Hal ini menjaga agar antarmuka tetap bersih dan tidak menghalangi area input teks di bagian bawah. Sementara itu, pada Tahap 13, method dispose() bertugas membersihkan sumber daya atau alokasi memori yang tak lagi dibutuhkan saat halaman ditutup. Dalam konteks ini, dispose() menghapus scrollController untuk menghindari masalah kebocoran memori (memory leak) pada aplikasi.

**Praktikum 2: Mengelola Data Layer dengan InheritedWidget dan InheritedNotifier**

Langkah 1: Buat file plan_provider.dart

![master_plan](images/17.png)

Langkah 2: Edit main.dart

![master_plan](images/18.png)

Langkah 3: Tambah method pada model plan.dart

![master_plan](images/19.png)

Langkah 4: Pindah ke PlanScreen

![master_plan](images/20.png)

![master_plan](images/21.png)

![master_plan](images/22.png)

Langkah 5: Edit method _buildAddTaskButton

![master_plan](images/23.png)

Langkah 6: Edit method _buildTaskTile

![master_plan](images/24.png)

Langkah 7: Edit _buildList

![master_plan](images/25.png)

Langkah 8: Tetap di class PlanScreen

![master_plan](images/26.png)

Langkah 9: Tambah widget SafeArea

![master_plan](images/27.png)

Langkah 10 : Hasil

![master_plan](images/28.png)

**Tugas Praktikum 2: InheritedWidget**

1.	Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki sesuai dengan tujuan aplikasi tersebut dibuat.

2.	Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier?

InheritedWidget yang dimaksud adalah PlanProvider. Fungsinya: Menyebarkan data Plan ke widget turunannya (seperti PlanScreen) tanpa perlu melewatkannya melalui constructor berulang-ulang. Alasan Menggunakan InheritedNotifier: Ini memungkinkan widget mendeteksi perubahan data secara otomatis. Berbeda dengan InheritedWidget standar, InheritedNotifier bisa "mendengarkan" update, sehingga saat task ditambah atau ditandai selesai, tampilan refresh sendiri tanpa setState manual.

3.	Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?

•  completedCount: Menghitung jumlah task yang telah selesai. 

•  completenessMessage: Menghasilkan pesan kemajuan, seperti "2 dari 5 tugas". Tujuannya: Memudahkan UI menampilkan status kemajuan secara langsung tanpa perhitungan manual, sambil menjaga logika utama tetap di model Plan untuk efisiensi.

4.	Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

![master_plan](images/29.gif)

Aplikasi Master Plan berbasis Flutter ini merupakan daftar tugas harian (to-do list) yang mendukung penambahan tugas baru dan penandaan tugas selesai. Di bagian bawah daftar, ada indikator kemajuan seperti "2 dari 5 tugas" untuk memantau progres. Perubahan data langsung tercermin di UI berkat state management sederhana menggunakan InheritedNotifier dan ValueNotifier, memastikan tampilan selalu sinkron dengan data terkini.

