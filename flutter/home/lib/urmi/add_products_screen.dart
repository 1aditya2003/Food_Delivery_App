import 'package:home/urmi/product.dart';
import 'package:home/urmi/shopping_cart_screen.dart';
import 'package:flutter/material.dart';

import 'package:home/urmi/product_card.dart';

class AddProductsScreen extends StatefulWidget {
  const AddProductsScreen({super.key});

  @override
  State<AddProductsScreen> createState() => _AddProductsScreenState();
}

class _AddProductsScreenState extends State<AddProductsScreen> {
  final List<Product> productList = [
    Product(title: 'fruit salad', price: '₹750', image: 'food2.jpg'),
    Product(title: 'burger & fries', price: '₹500', image: 'food3.jpg'),
    Product(title: 'pancakes', price: '₹450', image: 'food4.jpg'),
    Product(title: 'Chilli prawns', price: '₹800', image: 'food5.jpg'),
    Product(title: 'Indian thali', price: '₹1200', image: 'food6.jpg'),
    Product(title: 'Prawn Noodles', price: '₹900', image: 'food7.jpg'),
    Product(title: 'White sauce Pasta', price: '₹1000', image: 'food8.jpg'),
    Product(title: 'Chinese pudding', price: '₹500', image: 'food9.jpg'),
    Product(title: 'Egg soup', price: '₹600', image: 'food10.jpg'),
    Product(title: 'Rice Cake', price: '₹400', image: 'food11.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar(
          title: const Text('Home delivery',style: TextStyle(fontFamily: 'Poppins'),),
          centerTitle: true,
          leading: IconButton(onPressed:() {
                  Navigator.pop(context);
                },  icon: Icon(Icons.home)),
          actions: <Widget>[
            
                
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              tooltip: 'Open shopping cart',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ShoppingCartScreen(
                            productsList: productList
                                .where((e) => e.isAdded == true)
                                .toList())));
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => ShoppingCartScreen(
                        productsList: productList
                            .where((e) => e.isAdded == true)
                            .toList())));
          },
          label: Text('open cart'),
          icon: const Icon(Icons.shopping_cart),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (ctx, i) {
            return ProductCard(
              product: productList[i],
            );
          },
        ));
  }
}
