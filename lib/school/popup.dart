import 'package:flutter/material.dart';
void main() => runApp(const popup());
/// This is the main application widget.
class popup extends StatelessWidget {
  const popup({Key? key}) : super(key: key);
  static const String _title = 'Radio buttons';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.black,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}
/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int value = 0;

  Widget CustomRadioButton1(String text, int index, Icon icon) {

    return ElevatedButton.icon(
      icon: icon,
      onPressed: () {
        setState(() {
          value = index;
        });
      },
      style: ElevatedButton.styleFrom(
        elevation: 5.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        //  side: BorderSide(color: (value == index) ? Colors.green : Colors.black),
        primary: value == index ?  Colors.blue : Colors.white,
        padding: const EdgeInsets.all(8.0),
      ),
      label: Text(
        text,
        style: TextStyle(
          color: (value == index) ? Colors.white : Colors.black,
        ),
      ),




    );
  }


  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const SizedBox(height: 5.0),
        CustomRadioButton1("Cheque", 1,const Icon(Icons.atm)),
        const SizedBox(height: 5.0),
        CustomRadioButton1("Neft", 2,const Icon(Icons.money)),
        const SizedBox(height: 5.0),
        CustomRadioButton1("Online", 3,const Icon(Icons.payment))
      ],
    );
  }
}