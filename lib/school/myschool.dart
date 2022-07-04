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
                width: double.infinity,
                color: myHexColor,
              ),
            ),
            centerTitle: true,
            title:const Text(
              _title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 50,
                color: Colors.white
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
                  color:const Color(0xFF90CAF9),
                  borderOnForeground:true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child:
                      Container(
                        width: 500,
                         height: 500,
                         child:const Image(image: AssetImage('assets/images/hira.png'))
                      ),
                ),

              )
          ),
          Positioned(
              top: 550,
              left: 20,
              right: 20,
              child:Padding(
                padding: const EdgeInsets.only(left: 5,right: 5),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text('Student Details',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                         ),
                    ),
                    Container(
                      height: 150,
                      width: double.infinity,

                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10,10,10,10),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    //  side: BorderSide(color: Colors.re)
                                  )
                              )

                          ),

                            onPressed:(){},
                            child:Row(
                             // mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(image: AssetImage('assets/images/person.png'),),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Text('Jayden Shijoy',
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),),
                                    ),
                                    Text('Class-1-D',
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green,
                                      ),)
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Icon(Icons.arrow_circle_right,
                                  size: 50,
                                  color: Colors.black,),
                                ),
                              ],
                            )
                        ),
                      ),
                    ),
                    Container(
                      height: 150,
                      width: double.infinity,

                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10,10,10,10),
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.white),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      //  side: BorderSide(color: Colors.re)
                                    )
                                )

                            ),

                            onPressed:(){},
                            child:Row(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(image: AssetImage('assets/images/person.png'),),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Text('Jayden Shijoy',
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),),
                                    ),
                                    Text('Class-1-D',
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green,
                                      ),)
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Icon(Icons.arrow_circle_right,
                                    size: 50,
                                  color: Colors.black,),
                                ),
                              ],
                            )
                        ),
                      ),
                    )
                  ],
                ),
              ) ),

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
