import 'package:flutter/material.dart';
class vegieslist extends StatefulWidget {
  const vegieslist({Key? key}) : super(key: key);

  @override
  State<vegieslist> createState() => _vegieslistState();
}

class _vegieslistState extends State<vegieslist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vegetables'),
      ),
      body: _MyStatefulWidget(),
    );
  }
}
class _MyStatefulWidget extends StatefulWidget {
  const _MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<_MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<_MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Material(
              elevation: 20,
              shadowColor: Colors.lightBlueAccent,
              child: ListTile(
                title: Text('Matagi store'),
                subtitle: Text('Adderss'),
                trailing: Icon(Icons.add),
                leading: Image(image: AssetImage('assets/images/visiting.png'),),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(50),
                ),

              ),
            ),
            SizedBox(height: 20,),
            ListTile(
              title: Text('Matagi store'),
              subtitle: Text('Adderss'),
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

