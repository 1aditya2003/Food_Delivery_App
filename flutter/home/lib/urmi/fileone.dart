import 'package:flutter/material.dart';

class fileone extends StatelessWidget {
  const fileone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('ABOUT US',style: TextStyle(fontFamily: 'Poppins'),),
            centerTitle: true,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.home))),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
Expanded(
  child: 
        ListView(
      children: [
         
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 10, 10),
                        child: Text(
                            'All day international fine dining with an KUAO signature.At KUAO, the world is our living room. Expressed in the ease and elegance of the décor, the table settings, the wine list and of course the exquisite menu of specially curated international cuisines. The restaurant presents a relaxed and vibrant living room ambience. The spacious interiors blend comfortably into the atrium lobby, the impression of a tranquil oasis is accentuated with an abundance of natural light and space. At The Oberoi, Mumbai, you need not venture further than the comfort and luxury of Fenix to experience authentic global flavours from as far as Europe and Japan. Prepared live at our interactive robatayaki grill, sushi bar and tandoor oven. And served with our warm, traditional Indian hospitality. An ideal place in South Bombay for breakfast, Sunday brunch, a business lunch or dinner with the ones you love.',style: TextStyle(fontFamily: "Poppins-Light",fontSize: 15))
                            
                      )),
                  Align(
                    alignment: AlignmentDirectional(-0.2, 0.05),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Image.network(
                        'https://images.pexels.com/photos/2290070/pexels-photo-2290070.jpeg?auto=compress&cs=tinysrgb&w=1600',
                        width: 350,
                        height: 180,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        child: Text('Address: Nariman point, Mumbai',style: TextStyle(fontFamily: 'Poppins'),),
                      )),
                      SizedBox(height: 10,),
                  Align(
                    
                      alignment: Alignment.center,
                      child: Padding(
                      
                        padding: EdgeInsets.all(8),
                        child: Text('Number: 91+ 97372847393',style: TextStyle(fontFamily: 'Poppins')),
                      )),
                      SizedBox(height: 10,),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        child: Text('Email: kuaomumbai@gmail.com',style: TextStyle(fontFamily: 'Poppins')),
                      )),
    
      ],
    ),
  
),
             
            ],
          ),
          // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}
