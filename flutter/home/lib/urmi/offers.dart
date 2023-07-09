import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class offers1 extends StatelessWidget {
  const offers1({super.key});

  @override
  Widget build(BuildContext context) {
    
   
    return Scaffold(
      appBar: AppBar(title: const  Text(' OFFERS',style: TextStyle(fontFamily: 'Poppins'),),
      centerTitle: true,
      
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 30,),
          Expanded(child: ListView(
            children: [
              CarouselSlider(items: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image:AssetImage('assets/images/offers.png'),fit: BoxFit.fill)
                  )
                 
                ),
                 Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image:AssetImage('assets/images/offer2.png'),fit: BoxFit.fill)
                  )
                 
                ),
                 Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image:AssetImage('assets/images/offer5.jpg'),fit: BoxFit.fill)
                  )
                 
                ),
                 Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image:AssetImage('assets/images/offer4.png'),fit: BoxFit.fill)
                  )
                 
                ),
              ], options: CarouselOptions(autoPlay: true,aspectRatio: 16/7,height: 700,enableInfiniteScroll: true,enlargeCenterPage: true,))
            ],
          ))
           
          
        ],
      )
       
        
    );
   
  }
}


