import 'package:flutter/material.dart';

class Coffee extends StatelessWidget {
  // Data produk
  final List<Map<String, dynamic>> products = [
    {
      "name": "Dalgona Coffee",
      "price": "Rp 20.000",
      "image": "images/DalgonaCoffee.png"
    },
    {
      "name": "Capucino Coffee",
      "price": "Rp 15.000",
      "image": "images/capucinoo.png"
    },
    {
      "name": "Mocacino Coffee",
      "price": "Rp 15.000",
      "image": "images/Mocacino.png"
    },
    {
      "name": "Espresso Coffee",
      "price": "Rp 10.000",
      "image": "images/espresso.png"
    },
    {
      "name": "Robusta Coffee",
      "price": "Rp 20.000",
      "image": "images/Robusta.png"
    },
    {
      "name": "Late Coffee",
      "price": "Rp 18.000",
      "image": "images/LatteCoffee.png"
    },
  ];

  Coffee({Key? key}) : super(key: key);

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
              "Coffee",
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
                        height: 200,
                        width: 200,
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
