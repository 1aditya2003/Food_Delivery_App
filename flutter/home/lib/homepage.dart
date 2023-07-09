import 'dart:io';
import 'package:home/ojas/res.dart';
import 'package:home/slat.dart';
import 'package:flutter/material.dart';
import 'package:home/files.dart';
import 'package:home/hello.dart';
import 'package:home/urmi/fileone.dart';
import 'package:home/urmi/offers.dart';
import 'urmi/add_products_screen.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                 
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text("Hello Kiran",
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,fontFamily: 'Poppins')),
                          ],
                        ),
                        const SizedBox(height: 5),
                        const Text("Are you hungry?",
                            style: TextStyle(fontSize: 20, color: Colors.white,fontFamily: 'Poppins-Light'))
                      ],
                    ),
                    Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(12)),
                        child: const Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 30,
                        ))
                  ]),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 350,
              child: Slider1(),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                padding: const EdgeInsets.all(8),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1 / .8,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Res()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                       image: DecorationImage(image: NetworkImage('https://i.pinimg.com/originals/b7/6d/47/b76d472576e9d75e8f7c5fa3d95634f8.jpg'),fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                           const SizedBox(
                            height: 30,
                          ),
                          const Icon(
                            Icons.book,
                            size: 50,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Rerservation",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,fontFamily: 'Poppins-Light'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AddProductsScreen()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                       image: DecorationImage(image: NetworkImage('https://www.supplychainquarterly.com/ext/resources/2022/05/04/highway-g7c611d3a0_640.jpg?t=1651688734&width=640'),fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                           const SizedBox(
                            height: 30,
                          ),
                          const Icon(
                            Icons.map,
                            size: 50,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Home Delivery",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,fontFamily: 'Poppins-Light'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => offers1()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                       image: DecorationImage(image: NetworkImage('https://dk2dv4ezy246u.cloudfront.net/widgets/sSG86i4yv01g_large.jpg'),fit: BoxFit.fill,opacity: 30),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                           const SizedBox(
                            height: 30,
                          ),
                          const Icon(
                            Icons.food_bank,
                            size: 50,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "View Offers",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,fontFamily: 'Poppins-Light', ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => fileone()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                       image: DecorationImage(image: NetworkImage('https://images.pexels.com/photos/12413134/pexels-photo-12413134.jpeg?auto=compress&cs=tinysrgb&h=627&fit=crop&w=1200'),fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                           const SizedBox(
                            height: 30,
                          ),
                          const Icon(
                            Icons.person,
                            size: 50,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "About Us",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,fontFamily: 'Poppins-Light'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  
                ],
              ),
            )
          ],
        )));
  }
}
