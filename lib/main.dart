import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Gambar cover utama
                Image.asset('images/palembang.jpg'),

                // Bagian judul dan ikon love
                Container(
                  margin: const EdgeInsets.only(top: 16.0, bottom: 10.0),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Kota Palembang',
                        style: TextStyle(
                          fontSize: 28.0,
                          fontFamily: 'Staatliches',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 30,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Informasi utama
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      InfoRow(
                        icon: Icons.location_on,
                        label: 'Lokasi : Sumatera Selatan, Indonesia',
                      ),
                      SizedBox(height: 4),
                      InfoRow(
                        icon: Icons.calendar_month,
                        label: 'Dibangun : Sejak Abad ke-7',
                      ),
                      SizedBox(height: 4),
                      InfoRow(
                        icon: Icons.category,
                        label: 'Tipe : Kota Sejarah dan Budaya',
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                // Deskripsi
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Deskripsi',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Text(
                    'Kota Palembang adalah ibu kota provinsi Sumatera Selatan yang dikenal sebagai salah satu kota tertua di Indonesia. Kota ini memiliki sejarah panjang sebagai pusat Kerajaan Sriwijaya pada abad ke-7, sebuah kerajaan maritim besar yang berpengaruh di Asia Tenggara. Palembang terkenal dengan ikon Jembatan Ampera, Sungai Musi, dan kuliner khasnya seperti pempek.',
                    textAlign: TextAlign.justify,
                  ),
                ),

                const SizedBox(height: 16),

                // Galeri
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Galeri',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(height: 8),

                // List gambar horizontal
                SizedBox(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(4.0, 4.0, 0.0, 8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://apimice.kemenparekraf.go.id/event-daerah/public/668/3d0/28d/6683d028db589248499301.jpg',
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(4.0, 4.0, 0.0, 8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtaNuMxSPfnDg40IuFQxW8-iV2hSy2cu0hLw&s',
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(4.0, 4.0, 0.0, 8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJqjl4T1lZVBs4p2i_rFOxczCRkaoPihqzq-t5_t-IXbn2LDTVM_mxam9iCDMK4xOWXWk&usqp=CAU',
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(4.0, 4.0, 0.0, 8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://assets.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2022/03/21/1655778383.jpg',
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Bagian "AppBar bawah" berisi NPM dan Nama
                Container(
                  width: double.infinity,
                  color: Colors.redAccent,
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                  child: const Center(
                    child: Text(
                      '2226240153 Sandy Bela Hartati',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Widget baris informasi
class InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;

  const InfoRow({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.redAccent, size: 20),
        const SizedBox(width: 8),
        Text(label),
      ],
    );
  }
}