import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  final int selectedItem;
  BottomNav({super.key, required this.selectedItem});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedNavbar = 0;
  void changeSelectedNavBar(int index) {
    setState(() {
      selectedNavbar = index;
    });
    if (index == 0) {
      Navigator.pushNamed(context, '/beranda');
    } else if (index == 1) {
      Navigator.pushNamed(context, '/transaksi');
    } else if (index == 2){
      Navigator.pushNamed(context, '/registrasi');
    } else if (index == 3){
      Navigator.pushNamed(context, '/isi saldo');
    } else if (index == 4){
      Navigator.pushNamed(context, '/akun');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.house_rounded),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.timelapse_rounded),
          label: 'Transaksi',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.warehouse_rounded),
          label: 'Daftar Tukang',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.wallet_outlined),
          label: 'Isi Saldo',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_3_rounded),
          label: 'Akun',
        ),
      ],
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      currentIndex: widget.selectedItem,
      onTap: changeSelectedNavBar,
    );
  }
}