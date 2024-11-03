import 'package:flutter/material.dart'; // Mengimpor paket material design dari Flutter

void main() {
  runApp(MyApp()); // Menjalankan aplikasi dengan MyApp sebagai widget utama
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,// Mengembalikan widget MaterialApp
      home: ProfilePage(), // Mengatur halaman utama aplikasi menjadi ProfilePage
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Menggunakan Scaffold untuk struktur dasar halaman
      appBar: AppBar( // Menambahkan AppBar dengan ikon menu untuk membuka sidebar
        backgroundColor: const Color.fromARGB(255, 64, 136, 192),
      ),
      backgroundColor: Colors.grey[200], // Mengatur warna latar belakang halaman
      drawer: Drawer( // Menambahkan Drawer untuk sidebar di sisi kiri
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 52, 145, 232),
              ),
              child: Text(
                'Menu', // Judul header di sidebar
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.pop(context); // Menutup drawer saat item dipilih
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context); // Menutup drawer saat item dipilih
              },
            ),
          ],
        ),
      ),
      body: Center( // Mengatur konten untuk berada di tengah halaman
        child: Container( // Container untuk menampung konten dengan lebar tertentu
          width: 800,
          child: Column( // Menggunakan kolom untuk menyusun widget secara vertikal
            children: [
              // Header
              Container(
                color: const Color.fromARGB(255, 52, 145, 232), // Mengatur warna latar belakang header
                padding: EdgeInsets.all(20), // Memberikan padding di sekitar konten header
                child: Row( // Menggunakan Row untuk menyusun widget secara horizontal
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Menyebar widget di antara ruang
                  children: [
                    Column( // Kolom untuk menyusun teks nama dan status
                      crossAxisAlignment: CrossAxisAlignment.start, // Mengatur teks ke kiri
                      children: [
                        Text(
                          'MY BIODATA', // Menampilkan nama
                          style: TextStyle(
                              color: Colors.white, // Mengatur warna teks
                              fontSize: 24, // Mengatur ukuran font
                              fontWeight: FontWeight.bold), // Mengatur ketebalan font
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Profile Card
              Container(
                padding: EdgeInsets.all(40), // Memberikan padding di sekitar konten kartu profil
                color: Colors.white, // Mengatur warna latar belakang kartu profil
                child: Row( // Menggunakan Row untuk menyusun gambar profil dan informasi
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Profile Image
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("assets/images/dtrn.jpg"), // Mengambil gambar dari aset
                    ),
                    SizedBox(width: 20), // Memberikan jarak antara gambar dan teks
                    // Profile Info
                    Expanded( // Membuat kolom informasi profil mengisi ruang yang tersisa
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start, // Mengatur teks ke kiri
                        children: [
                          Text(
                            "Florentina Detrin Dhema", // Menampilkan nama
                            style: TextStyle(
                              fontSize: 30, // Mengatur ukuran font
                              fontWeight: FontWeight.bold, // Mengatur ketebalan font
                            ),
                          ),
                          Text(
                            '42230033', // Menampilkan NIM
                            style: TextStyle(
                              fontSize: 16, // Mengatur ukuran font
                              color: Colors.grey[700], // Mengatur warna teks
                            ),
                          ),
                          SizedBox(height: 20), // Memberikan jarak vertikal
                          Row(
                            children: [ 
                              Text('Prodi Teknologi Informasi'), // Menampilkan program studi
                            ],
                          ),
                          SizedBox(height: 10), // Memberikan jarak vertikal
                         
                          // Deskripsi Diri
                          Text(
                            'Deskripsi Diri:', // Label untuk deskripsi
                            style: TextStyle(
                              fontSize: 18, // Mengatur ukuran font
                              fontWeight: FontWeight.bold, // Mengatur ketebalan font
                            ),
                          ),
                          SizedBox(height: 10), // Memberikan jarak vertikal
                          Text(
                            'Nama saya Detrin dan saya mahasiswa semester 5 di Universitas Pendidikan Nasional. Diperkuliahan semester ini saya mengambil konsetrasi UIUX untuk mempelajari lebih dalam mengenai design.', // Isi deskripsi
                            style: TextStyle(fontSize: 16), // Mengatur ukuran font teks deskripsi
                          ),
                           SizedBox(height: 10),
                          Text(
                            'Skills:', // Label untuk deskripsi
                            style: TextStyle(
                              fontSize: 18, // Mengatur ukuran font
                              fontWeight: FontWeight.bold, // Mengatur ketebalan font
                            ),
                          ),
                          SizedBox(height: 10), // Memberikan jarak vertikal
                          Text(
                            'Mampu menggunakan figma untuk design, mampu mengoperasikan msword dan excel, mampu mengoperasikan komputer ', // Isi deskripsi
                            style: TextStyle(fontSize: 16), // Mengatur ukuran font teks deskripsi
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
