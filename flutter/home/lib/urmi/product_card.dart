import 'package:home/urmi/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key, required this.product});

  final Product product ;

  @override
  State<ProductCard> createState() => _ProductCardState();
}
 
class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Card( 
          elevation: 10,
          color: widget.product.isAdded ? Color.fromARGB(255, 163, 194, 164): null,
          margin: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: ListTile(
            contentPadding: EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 10),
            leading: Image.asset('assets/images/${widget.product.image}'),
            title:  Text(widget.product.title,style: TextStyle(fontFamily: 'Poppins-Light'),),
            subtitle: Text(widget.product.price),
            trailing: widget.product.isAdded ? 
             IconButton(
              onPressed: (){
              setState(() { 
                   widget.product.isAdded =false;
                
                },);}, 
                icon: Image.asset('assets/images/correct.png'), 
                
                )
            
            :ElevatedButton.icon(
              onPressed:(){
                setState(() {
                   widget.product.isAdded =true;
                
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('item added succcessfully!'), behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.blue.withOpacity(.8),
                  )
                );
              } ,
              style: ElevatedButton.styleFrom(
                elevation: 5, shape: const StadiumBorder()
              ),
              icon: const Icon(Icons.shopping_cart_checkout_rounded),
              label: const Text('Add'),
              onLongPress: () {
                setState(() {
                   widget.product.isAdded =false;
                
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('item deleted'), behavior: SnackBarBehavior.floating,
                  backgroundColor: Color.fromARGB(255, 189, 104, 68).withOpacity(.8),
                  )
                );
                
              },
              ),

          ),
        );
  }
}