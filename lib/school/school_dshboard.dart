import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shape_of_view_null_safe/shape/arc.dart';

class School_dashboard extends StatelessWidget {
  const School_dashboard({Key? key}) : super(key: key);
  static const String _title = 'School Fee Payment';



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
                color: const Color(0xFFE3F2FD),
              ),
            ),
            centerTitle: true,
            title: Image.asset('assets/images/hira.png',
                width: 80000,
                height: 500),

          ),
          Positioned(
            top: 200,
            left: 20,
              right: 20,
              child: Container(

            height: 300,
            width: 450,
                child: Card(
              elevation: 15,
              color: myHexColor,
              borderOnForeground:true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                        child: Row(
                          children:const<Widget>[
                           Text('NAME',
                           style: TextStyle(
                             fontSize: 20,
                             color: Colors.white
                           ),),
                            Padding(
                              padding: EdgeInsets.fromLTRB(220, 0, 10, 0),
                              child: Text('GR.NO.',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white
                                ),),
                            )

                          ],
                        ),

                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                        child: Row(
                          children:const<Widget>[
                            Text('Jayden Shijoy',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),),
                            Padding(
                              padding: EdgeInsets.fromLTRB(150, 0, 10, 0),
                              child: Text('9775',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),),
                            )

                          ],
                        ),

                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                        child: Row(
                          children:const<Widget>[
                            Text('DATE OF BIRTH',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                              ),),
                            Padding(
                              padding: EdgeInsets.fromLTRB(120, 0, 10, 0),
                              child: Image(image: AssetImage('assets/images/person.png'))
                            )

                          ],
                        ),

                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 300, 50),

                            child:Text('2015-10-05',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),),

                      ),


                    ],
                  ),
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
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: const [
          Image(image: AssetImage('assets/images/appoint.png')),
          Image(image: AssetImage('assets/images/assignment.png')),
          Image(image: AssetImage('assets/images/calender.png')),
          Image(image: AssetImage('assets/images/profile.png')),
          Image(image: AssetImage('assets/images/upload.png')),
          Image(image: AssetImage('assets/images/fess.png')),
          Image(image: AssetImage('assets/images/atten.png')),


        ],
      ),

    );
  }
}

