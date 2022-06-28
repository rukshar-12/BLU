import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:untitled/school/payment1.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import 'forget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'My App';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      title: _title,
      home: Scaffold(
        appBar: null,
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Color myHexColor = Color(0xff1b1f69);
   @override
  Widget build(BuildContext context) {

    return ListView(


     children: <Widget>[

       Container(
         height: 350.0,
         width: double.infinity,
         padding: const EdgeInsets.fromLTRB(100, 50, 100, 100),
         decoration: const BoxDecoration(
             image: DecorationImage(
               image: AssetImage('assets/images/design5.png'),

               fit: BoxFit.cover,
             )
         ),


    ),






        const SizedBox(height: 10.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
            //  SizedBox(height: 300.0),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child:const Text('Lets get started',
                  style: TextStyle(color:Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
                )
              ),
              Container(
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: const Text(
                    'Please enter your mobile number to receive the verification code',
                    maxLines: 2,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 20),
                  )),
              const SizedBox(height: 30.0),
              Container(
                  padding: const EdgeInsets.all(28),
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
          ),
                  child: Column(
                    children: [
                      IntlPhoneField(
                        decoration: const InputDecoration(
                          labelText: 'Phone Number',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(),
                          ),
                        ),
                        initialCountryCode: 'IN',
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                      )
    ]
                  )
    ),

                  Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(myHexColor),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              //  side: BorderSide(color: Colors.re)
                            )
                        )

                    ),
                    child: const Text('Proceed',style: TextStyle(
                      fontSize: 20.0,
                    ),),
                    onPressed: () {

                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => const Otp()));
                    },
                  )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  const Text('Does not have account?'),
                  TextButton(
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => const Payment()));
                    },
                  )

                ],
              ),


            ]

          )

        ],
      );
  }

}
