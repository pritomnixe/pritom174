import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String, dynamic>> products = const [
    {
      "name": "Sneakers",
      "price": "\$49.99",
      "image": "assets/images/sample.png"
    },
    {
      "name": "Wrist Watch",
      "price": "\$89.99",
      "image": "assets/images/sample.png"
    },
    {
      "name": "Backpack",
      "price": "\$29.99",
      "image": "assets/images/sample.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("🛍️ Pritom's Store"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return Card(
              margin: const EdgeInsets.only(bottom: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      product["image"],
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      product["name"],
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      product["price"],
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.teal,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Buying ${product["name"]}")),
                        );
                      },
                      child: const Text("Buy Now"),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
