import 'package:flutter/material.dart';

// Struktur data untuk menyimpan riwayat pesanan
class OrderHistory {
  final String productName;
  final String price;
  final String dateTime;

  OrderHistory({
    required this.productName,
    required this.price,
    required this.dateTime,
  });
}

// Halaman riwayat pesanan
class HistoryPesanan extends StatelessWidget {
  // Contoh data riwayat pesanan
  final List<OrderHistory> orderHistory = [
    OrderHistory(productName: "Pancake", price: "Rp 30.000", dateTime: "2024-04-14 10:00"),
    OrderHistory(productName: "Dalgona Coffee", price: "Rp 20.000", dateTime: "2024-04-14 10:30"),
    OrderHistory(productName: "Mango Stiki Rice", price: "Rp 30.000", dateTime: "2024-04-14 11:00"),
    // Tambahkan riwayat pesanan lainnya di sini jika diperlukan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History Pesanan'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView.builder(
        itemCount: orderHistory.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(orderHistory[index].productName),
            subtitle: Text(orderHistory[index].price),
            trailing: Text(orderHistory[index].dateTime),
          );
        },
      ),
    );
  }
}
