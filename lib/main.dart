import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductPage(),
    );
  }
}

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int selectedSize = 37;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        actions: [
          Icon(Icons.search, color: Colors.black),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: "https://plus.unsplash.com/premium_photo-1734111669264-5fe97ac8314c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDIzOHxKcGc2S2lkbC1Ia3x8ZW58MHx8fHx8",
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            Center(
                child: Image.network(
                    "https://images.unsplash.com/photo-1736515696614-17b69c3fa6b2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDE5MHxKcGc2S2lkbC1Ia3x8ZW58MHx8fHx8")),
            SizedBox(height: 16),
            Text(
              'Foreign Tommy',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Row(
              children: List.generate(
                5,
                (index) => Icon(Icons.star,
                    color: const Color.fromARGB(255, 227, 105, 154), size: 20),
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text(
                  '₦ 45,000',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10),
                Text(
                  '₦ 55,000',
                  style: TextStyle(
                    fontSize: 16,
                    decoration: TextDecoration.lineThrough,
                    color: Colors.grey,
                  ),
                ),
                Spacer(),
                Text(
                  'Available in Stock',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 64, 108, 219),
                      fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'About',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Very energetic dog',
              style: TextStyle(color: Colors.grey[700]),
            ),
            SizedBox(height: 16),
            Text(
              'Select Size',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [36, 37, 38, 39, 40, 41]
                  .map((size) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedSize = size;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: selectedSize == size
                                ? const Color.fromARGB(255, 27, 54, 228)
                                : Colors.grey[200],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            '$size',
                            style: TextStyle(
                              color: selectedSize == size
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                child: Text(
                  'Add to cart',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
