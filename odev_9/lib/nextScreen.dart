import 'package:flutter/material.dart';

class Product {
  final String name;
  final String imageUrl;

  Product({required this.name, required this.imageUrl});
}

class NextScreen extends StatefulWidget {
  final String email;
  final String password;

  NextScreen({required this.email, required this.password});

  @override
  _NextScreenState createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  List<Product> products = [
    Product(name: 'Product 1', imageUrl: 'photo/flutter.png'),
    Product(name: 'Product 2', imageUrl: 'photo/flutter.png'),
    // Add more products as needed
  ];

  List<Product> cartItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Email: ${widget.email}',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'Password: ${widget.password}',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  products[index].imageUrl,
                  height: 120,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(products[index].name),
                ),
                ElevatedButton(
                  onPressed: () {
                    addToCart(products[index]);
                  },
                  child: Text('Sepete Ekle'),
                ),
              ],
            ),
          );
        },
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Hello, ${widget.email}',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              title: Text('Sepete Git'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                navigateToCart();
              },
            ),
          ],
        ),
      ),
    );
  }

  void addToCart(Product product) {
    setState(() {
      cartItems.add(product);
      showSnackBar('Ürün sepete eklendi: ${product.name}');
    });
  }

  void showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void navigateToCart() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CartScreen(cartItems: cartItems),
      ),
    );
  }
}

class CartScreen extends StatelessWidget {
  final List<Product> cartItems;

  CartScreen({required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sepetim'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cartItems[index].name),
            leading: Image.asset(
              cartItems[index].imageUrl,
              height: 40,
              width: 40,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
