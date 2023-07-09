import 'package:home/urmi/product_card.dart';
import 'package:home/urmi/product.dart';
import 'package:flutter/material.dart';

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({super.key, required this.productsList});

  final List<Product> productsList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const  Text('Shopping Cart',style: TextStyle(fontFamily: "Poppins"),),
      centerTitle: true,
      leading: IconButton(onPressed: () {
        Navigator.pop(context);
      },icon:Icon(Icons.arrow_back) ,)
       
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){}, 
        label: Text('Buy now'), 
        icon: const Icon(Icons.shopping_cart_checkout_rounded),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        

        body:
        SingleChildScrollView(child: Column(
          children: [
            SizedBox(height: 10,),
            Text("ITEMS FOR CHECKOUT", style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontFamily: 'Poppins-Light'
                    
                ),),
            ListView.builder(
              shrinkWrap: true,
              itemCount: productsList.length,
              itemBuilder: (ctx, i){
                return ProductCard(product: productsList[i],
                );
                },),
              
                ],
                ),
                )
         
          
          );
      
      
    
  }
  

}