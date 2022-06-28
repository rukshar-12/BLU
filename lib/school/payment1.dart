import 'package:flutter/material.dart';
import 'package:untitled/school/popup.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:untitled/school/school_dshboard.dart';


class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);
  static const String _title = 'School Fee Payment';


  Widget build(BuildContext context) {
    Color myHexColor = const Color(0xff1b1f69);
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    return MaterialApp(
      builder:(context,child)=>ResponsiveWrapper.builder(
          child,
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(480, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
      ) ,
      title: _title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.black,

      ),
      home: Scaffold(
          resizeToAvoidBottomInset: true,

        appBar: AppBar(
            backgroundColor: myHexColor,

            title: const Text(_title),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
        ),

        ),

        body: const Center(
          child: MyStatefulWidget(),
        ),

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
  final TextEditingController _controller = TextEditingController();
  final List<String> items = [
    'Cheque',
    'NEFT',
    'ONLINE',
    
  ];

  Color myHexColor = const Color(0xff1b1f69);
  int value = 0;
  final List<String> genderItems = [
    'Anil Rai'
  ];

  String? selectedValue;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
    // physics: const NeverScrollableScrollPhysics(),

      children: <Widget>[

        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 30),


            child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 350),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon:const Icon(Icons.person),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,

                      ),
                      labelText: 'Student Name',
                      hintText: 'Enter Your Full Name.',
                      hintStyle: const TextStyle(fontSize: 14),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  DropdownButtonFormField2(
                    decoration: InputDecoration(
                      //Add isDense true and zero Padding.
                      //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                      isDense: true,
                      prefixIcon:const Icon(Icons.card_membership),
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      //Add more decoration as you want here
                      //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                    ),
                    isExpanded: true,
                    hint: const Text(
                      'Select Member',
                      style: TextStyle(fontSize: 14),
                    ),

                    items: genderItems
                        .map((item) =>
                        DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Please select member.';
                      }
                    },

                    onChanged: (value) {
                      //onchange code
                    },
                    buttonHeight: 60,
                    buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                    buttonWidth: 200,
                    itemHeight: 40,
                    dropdownMaxHeight: 200,
                    searchController: textEditingController,
                    searchInnerWidget: Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                        bottom: 4,
                        right: 8,
                        left: 8,
                      ),
                      child: TextFormField(
                        controller: textEditingController,
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 8,
                          ),
                          hintText: 'Search for an member',
                          hintStyle: const TextStyle(fontSize: 12),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    searchMatchFn: (item, searchValue) {
                      return (item.value.toString().contains(searchValue));
                    },
                    //This to clear the search value when you close the menu
                    onMenuStateChange: (isOpen) {
                      if (!isOpen) {
                        textEditingController.clear();
                      }
                    },
                    onSaved: (value) {
                      selectedValue = value.toString();
                    },
                  ),
                  const SizedBox(height: 50),
                  DropdownButtonFormField2(
                    decoration: InputDecoration(
                      //Add isDense true and zero Padding.
                      //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                      isDense: true,
                      prefixIcon:const Icon(Icons.payment),
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      //Add more decoration as you want here
                      //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                    ),
                    isExpanded: true,

                    hint: const Text(
                      'Select Your Payment Method',
                      style: TextStyle(fontSize: 14),
                    ),
                    icon: const Icon(

                      Icons.arrow_drop_down,
                      color: Colors.black45,
                    ),
                    iconSize: 30,
                    buttonHeight: 60,
                    buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),

                    items: items
                        .map((item) =>
                        DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Please select Payment Method.';
                      }
                    },
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String;
                      });
                    },
                    
                    buttonWidth: 200,
                    itemHeight: 40,
                    dropdownMaxHeight: 200,
                    searchController: textEditingController,
                    searchInnerWidget: Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                        bottom: 4,
                        right: 8,
                        left: 8,
                      ),
                      child: TextFormField(
                        controller: textEditingController,
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 8,
                          ),
                          hintText: 'Search for an method',
                          hintStyle: const TextStyle(fontSize: 12),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    searchMatchFn: (item, searchValue) {
                      return (item.value.toString().contains(searchValue));
                    },
                    //This to clear the search value when you close the menu
                    onMenuStateChange: (isOpen) {
                      if (!isOpen) {
                        textEditingController.clear();
                      }
                    },
                    onSaved: (value) {
                      selectedValue = value.toString();
                    },
                  ),
                  const SizedBox(height: 400),
                  Container(
                    height: 50,
                    width: double.maxFinite,
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),

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
                      onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>const School_dashboard()));
                      },
                      child: const Text('Submit Button'),
                    ),
                  ),
                ],
              ),
            ),


      ),

    ),
    ],
    );
  }
}
