import 'package:flutter/material.dart';

class Myschool extends StatelessWidget {
  const Myschool({Key? key}) : super(key: key);
  static const String _title = 'My School';
  @override
  Widget build(BuildContext context) {
    Color myHexColor = const Color(0xff1b1f69);
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    return MaterialApp(

      title: _title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryColor: Colors.black,
        //  accentColor: Colors.black,

      ),
      home: Stack(

        children: <Widget>[
          AppBar(
            toolbarHeight: 300,
            elevation: 50,
            shadowColor: Colors.white30,
            backgroundColor: Colors.white,
            flexibleSpace: ClipPath(
              clipper: Customshape(),
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xFF90CAF9),
              ),
            ),
            centerTitle: true,
            title:const Text(
              _title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 50,
                color: Colors.black
              ),
            )
          ),

          Positioned(
              top: 200,
              left: 20,
              right: 20,
              child: Container(

                height: 200,
                width: 450,
                child: Card(
                  elevation: 15,
                  color: myHexColor,
                  borderOnForeground:true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  // child: Row(
                  //   children:const [
                  //     Image(image: AssetImage('assets/image/hfs.png')),
                  //     Text('Hiranandani Foundation School Mens Sana in Corpore San',
                  //     textAlign: TextAlign.center,
                  //     style: TextStyle(
                  //       fontSize: 30,
                  //     ),)
                  //   ],
                  // ),
                ),

              )
          ),

        ],

      ),


    );

  }
}

class Customshape extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(0, height-50);
    path.quadraticBezierTo(width/2, height, width, height-50);
    path.lineTo(width, 0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}

