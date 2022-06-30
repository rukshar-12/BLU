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
                color: const Color(0xFF90CAF9),
              ),
            ),
            centerTitle: true,
            title: Image.asset('assets/images/hira.png',
                width: 80000,
                height: 5000),
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
          Positioned(
              top: 500,
              left: 20,
              right: 20,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('School Dashboard',style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),),
                  ),
                  GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 30.0,
                    shrinkWrap: true,
                    children: List.generate(choices.length, (index) {
                     return Center(
                       child: SelectCard(choice: choices[index]),
                     );
                    },),),
                ],
              ),
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

class Choice {
  const Choice({required this.title,  required this.image});
  final String title;
  final ImageProvider image;
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Appointment', image: AssetImage('assets/images/appoint.png')),
  Choice(title: 'Assignment', image: AssetImage('assets/images/assignment.png')),
  Choice(title: 'Attendance', image: AssetImage('assets/images/atten.png')),
  Choice(title: 'Calender', image: AssetImage('assets/images/calender.png')),
  Choice(title: 'Fees', image: AssetImage('assets/images/fees.png')),
  Choice(title: 'Leave', image: AssetImage('assets/images/leave.png')),
  Choice(title: 'Profile', image:AssetImage('assets/images/profile.png')),
  Choice(title: 'Upload', image: AssetImage('assets/images/upload.png')),

];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme
        .of(context)
        .textTheme
        .displaySmall;
    return SizedBox(
      height: 500,
      width: 500,
      child: Card(
          color: Colors.white,
          elevation:5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(child: Column(
             // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image(image: choice.image),

                Text(choice.title, style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                )),
              ]
          ),
          )
      ),
    );
  }

}