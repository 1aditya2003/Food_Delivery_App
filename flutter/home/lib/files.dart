import 'package:flutter/material.dart';
import 'package:home/homepage.dart';
class Files extends StatelessWidget {
  const Files({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        
          height: 100,
          width: 300,
          
          child: Container(
            
    
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(198, 241, 194, 89)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: const Image(image: NetworkImage('https://assets3.thrillist.com/v1/image/3103197/1584x1056/crop;webp=auto;jpeg_quality=60;progressive.jpg')),

                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "Chicken Burger",
                      style: TextStyle(fontSize: 20),
                    ),
                    const Text("Fresh Patty")
                  ],
                )
              ],
            ),
          )
          
          
          ),
    );
  }
}
