import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Koperasi Undiksha"),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.jpg'), // Pastikan file gambar ada di folder assets
                ),
                title: Text("Nasabah\nMaria Karisma Pada Wangge"),
                subtitle: Text("Total Saldo Anda\nRp. 200.000"),
                trailing: Icon(Icons.account_circle, color: Colors.blue[900]),
              ),
            ),
            SizedBox(height: 20),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              children: [
                _buildMenuItem(Icons.account_balance_wallet, "Cek Saldo"),
                _buildMenuItem(Icons.sync_alt, "Transfer"),
                _buildMenuItem(Icons.savings, "Deposito"),
                _buildMenuItem(Icons.payment, "Pembayaran"),
                _buildMenuItem(Icons.attach_money, "Pinjaman"),
                _buildMenuItem(Icons.list_alt, "Mutasi"),
              ],
            ),
            SizedBox(height: 20),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: Icon(Icons.phone, color: Colors.blue[900]),
                title: Text("Butuh Bantuan?"),
                subtitle: Text("0878-1234-1024"),
                trailing: Icon(Icons.call, color: Colors.blue[900]),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildBottomIcon(Icons.settings, "Setting"),
                _buildBottomIcon(Icons.qr_code, ""),
                _buildBottomIcon(Icons.person, "Profile"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.blue[900], size: 40),
        SizedBox(height: 5),
        Text(title, textAlign: TextAlign.center),
      ],
    );
  }

  Widget _buildBottomIcon(IconData icon, String title) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue[900], size: 40),
        SizedBox(height: 5),
        if (title.isNotEmpty) Text(title, textAlign: TextAlign.center),
      ],
    );
  }
}
