import 'package:flutter/material.dart';

class Product {
  final String name;
  final String image;
  final String price;

  Product({required this.name, required this.image, required this.price});
}

class KeranjangProduk extends StatefulWidget {
  @override
  State<KeranjangProduk> createState() => _KeranjangProdukState();
}

class _KeranjangProdukState extends State<KeranjangProduk> {
  bool checkedValue = false;

  List<Product> products = [
    Product(name: "Pancake", image: "images/pancake.png", price: "Rp 30.000"),
    Product(name: "Dalgona Coffee", image: "images/DalgonaCoffee.png", price: "Rp 20.000"),
    Product(name: "Mango Stiki Rice", image: "images/StikiRice.png", price: "Rp 30.000"),
    // Add more products here if needed
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: products.map((product) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
          child: Column(
            children: [
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.orange,
                    value: checkedValue,
                    onChanged: (newValue) {
                      setState(() {
                        checkedValue = newValue!;
                      });
                    },
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 8,
                          ),
                        ]),
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 12), // Menggeser teks "Pancake" dan teks harga
                        Text(
                          product.price,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.delete,
                        color: Colors.redAccent,
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              "-",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "1",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            height: 25,
                            width: 25,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              "+",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              Divider(thickness: 1),
            ],
          ),
        );
      }).toList(),
    );
  }
}
