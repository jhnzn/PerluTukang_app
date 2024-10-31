import 'package:flutter/material.dart';
import 'package:perlu_tukang/models/item.dart';
import 'package:perlu_tukang/widget/bottom_navigasi.dart';

class TransaksiPage extends StatelessWidget {
  TransaksiPage({super.key});

  final List<item> items = [
    item(
        name: "didit teknik",
        Image: "assets/profil didit.png",
        konfirmasi: "26/04/2023 06:29",
        tagline: "5758 teknik",
        status: "Menunggu konfirmasi"),
    item(
        name: "Danish Jaya Teknik",
        Image: "assets/profil danish.png",
        konfirmasi: "26/04/2023 06:29",
        tagline: "Danish Jaya teknik",
        status: "Menunggu konfirmasi"),
    item(
        name: "Free Kuota",
        Image: "assets/profil free.png",
        konfirmasi: "26/04/2023 06:25",
        tagline: " ",
        status: "Menunggu konfirmasi")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      automaticallyImplyLeading: false,
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
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () {},
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image(
                              image: AssetImage(item.Image),
                              width: 50,
                              height: 50,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                //text sblh image
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item.name,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        item.konfirmasi,
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Row(
                                        //text sebelahan
                                        children: [
                                          Text(
                                            item.tagline,
                                            style:
                                                TextStyle(color: Colors.blue),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              item.status,
                                              style: TextStyle(
                                                  color: Colors.yellow),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
      bottomNavigationBar: BottomNav(selectedItem: 1),
    );
  }
}
