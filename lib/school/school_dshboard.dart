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
        primaryColor: Colors.black,
        accentColor: Colors.black,

      ),
      home: Scaffold(
        resizeToAvoidBottomInset: true,

        appBar:  AppBar(
          toolbarHeight: 300,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          flexibleSpace: ClipPath(
            clipper: Customshape(),
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              color: myHexColor,
            ),
          ),
          title: Image.asset('assets/images/hira.png'),
        ),

        body: const Center(
          child: MyStatefulWidget(),
        ),

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
    return true;
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
    return Container();
  }
}

