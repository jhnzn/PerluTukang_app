import 'package:flutter/material.dart';
import 'package:perlu_tukang/widget/bottom_navigasi.dart';

class IsiSaldo extends StatelessWidget {
  const IsiSaldo({super.key});

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
      body: const Center(child: Text('Isi Saldo - Coming Soon')),
      bottomNavigationBar: BottomNav(selectedItem: 3),
    );
  }
}
