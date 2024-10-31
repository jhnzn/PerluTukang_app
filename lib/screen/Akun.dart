import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widget/bottom_navigasi.dart';

class Akun extends StatelessWidget {
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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.0),
            ListTile(
               leading: Icon(Icons.person, size: 50),
              title: Text(
                'Username',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:const[
                Text('blabla@gmail.com'), 
                Text('081626221271')
                ],
              ),
           trailing: GestureDetector(
  onTap: () {
  },
  child: Container(
    width: 65,
    height: 40,
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(8), 
    ),
    child: Center(
      child: Text(
        "Edit",
        style: TextStyle(color: Colors.white,fontSize: 18),
      ),
    ),
  ),
),
              onTap: () {
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.lock),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: .0),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Ubah Password',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                  ),
                ],
              ),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.message),
              title: Text(
                'Ketentuan Layanan',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                // Navigate to change password page
              },
            ),
            Divider(),
            SizedBox(height: 16.0),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text(
                'Kebijakan Privasi',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                // Navigate to notifications settings page
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.message),
              title: Text(
                'Whatsapp Admin',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                // Navigate to language settings page
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout),
              iconColor: Colors.red,
              title: Text('Keluar'),
              textColor: Colors.red,
              onTap: () {
                // Navigate to language settings page
              },
            ),
            Divider(),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.0), 
                  // Atur padding horizontal
              title: Center(
                child: Text(
                  'Version V 1.3.6',
                  style: TextStyle(
                  ),
                ),
              ),
              onTap: () {},
                shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // Atur border radius sesuai keinginan Anda
            side: BorderSide(color: Colors.blue), // Atur warna border sesuai keinginan Anda
  ), 
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(selectedItem: 4),
    );
  }
}
   