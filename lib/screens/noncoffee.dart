import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NonCoffee extends StatelessWidget {
  // Data produk
  final List<Map<String, dynamic>> products = [
    {
      "name": "Milk Shake Coklat",
      "price": "Rp 35.000",
      "image": "images/MCoklat.png"
    },
    {
      "name": "Milk Shake Caramel",
      "price": "Rp 35.000",
      "image": "images/MCaramel.png"
    },
    {
      "name": "Milk Shake Strawbery",
      "price": "Rp 35.000",
      "image": "images/MStrawbery.png"
    },
    {"name": "Jus Jeruk", 
    "price": "Rp 10.000", 
    "image": "images/JusJeruk.png"},
    {
      "name": "Jus Avocado",
      "price": "Rp 12.000",
      "image": "images/JusAvocado.png"
    },
    {
      "name": "Ice Matcha",
      "price": "Rp 18.000",
      "image": "images/MatchaBoba.png"
    },
    // Tambahkan data produk lainnya sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(top: 22, left: 0, right: 0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Non Coffee",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 15),
          GridView.count(
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            shrinkWrap: true,
            children: List.generate(products.length, (index) {
              // Membuat widget untuk setiap produk
              return Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        // Tambahkan aksi ketika item diklik
                      },
                      child: Image.asset(
                        products[index]["image"],
                        fit: BoxFit.contain,
                        height: 220,
                        width: 220,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            products[index]["name"],
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                products[index]["price"],
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Icon(
                                Icons.shopping_cart,
                                color: Colors.orange,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
