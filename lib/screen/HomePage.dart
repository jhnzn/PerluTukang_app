import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:perlu_tukang/widget/bottom_navigasi.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: "Cari kebutuhan servismu",
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide
                  .none, // Menghilangkan outline border ketika dalam keadaan non-focus
            ),
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
            color: Colors.grey,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                        height: 180,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image(image: AssetImage('assets/banner1.png'))),
                    SizedBox(width: 5),
                    Container(
                        margin: EdgeInsets.all(5),
                        width: 420,
                        height: 250,
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Image(image: AssetImage('assets/banner2.jpeg'))),
                    SizedBox(width: 5),
                    Container(
                        margin: EdgeInsets.all(5),
                        width: 420,
                        height: 250,
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                                image: AssetImage(
                              'assets/banner3.jpeg',
                            )))),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: InkWell(
                  onTap: () {
                    print(
                      "Location tapped",
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Colors.blue,
                          size: 40,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Lokasi Saya",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Kota Malang, Kedungkandang",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.grey,
                          size: 28,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Kategori Jasa',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Temukan kebutuhan servismu dibawah ini sesuai yang kamu butuhkan',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey.shade600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ]),
              ),
              Row(
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: 52,
                        height: 54,
                        child: Column(children: [
                          Image.asset(
                            "Assets/Jasa1.png",
                            width: 30,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Servis AC",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )
                        ]),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            width: 52,
                            height: 54,
                            child: Column(children: [
                              Image.asset(
                                "Assets/Jasa2.png",
                                width: 27,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Cat",
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              )
                            ]),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                width: 52,
                                height: 54,
                                child: Column(children: [
                                  Image.asset(
                                    "Assets/Jasa3.png",
                                    width: 30,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Servis CCTV",
                                    style: TextStyle(
                                        fontSize: 8,
                                        fontWeight: FontWeight.bold),
                                  )
                                ]),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Container(
                                    width: 52,
                                    height: 54,
                                    child: Column(children: [
                                      Image.asset(
                                        "Assets/Jasa4.png",
                                        width: 27,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Bangunan",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ]),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Container(
                                        width: 52,
                                        height: 54,
                                        child: Column(children: [
                                          Image.asset(
                                            "Assets/Jasa5.png",
                                            width: 30,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Servis Derek",
                                            style: TextStyle(
                                                fontSize: 8,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ]),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Penyedia Jasa Terdekat',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
         SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    children: [
      Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: 193,
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  "Servis Laptop Malang",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Jl. Gajayana, ketawanggede,Kec.Lowokwaru, Kota Malang',
                ),
              ],
            ),
          ),
        ),
      ),
      Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: 193,
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  "PietComp",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Gg. 3 No64, Bandungrejoso, Kec. Sukun, Kota Malang',
                ),
              ],
            ),
          ),
        ),
      ),
      Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: 193,
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  "Servis CCTV",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Jl. Gajayana, ketawanggede,Kec.Lowokwaru, Kota Malang',
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  ),
),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Artikel Terbaru',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 240,
                child: Stack(
                  children: [
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 10,
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 150,
                            child: Image.asset(
                              "assets/berita1.jpg",
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 10,
                      child: SizedBox(
                        height: 70,
                        child: Column(children: [
                          Text(
                            "Update Aplikasi Perlu Tukang",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ]),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 240,
                child: Stack(
                  children: [
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 10,
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 150,
                            child: Image.asset(
                              'assets/Mitra Tukang.jpg',
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 10,
                      child: SizedBox(
                        height: 70,
                        child: Column(children: [
                          Text(
                            "Update Terbaru Untuk Mitra Tukang",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ]),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 240,
                child: Stack(
                  children: [
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 10,
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 150,
                            child: Image.asset(
                              "assets/berita3.jpg",
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 10,
                      child: SizedBox(
                        height: 70,
                        child: Column(children: [
                          Text(
                            "Update Terbaru Untuk Konsumen",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        Text("Update Terbaru Untuk Konsumen",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey))
                        ]),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(selectedItem: 0),
);
}
}
