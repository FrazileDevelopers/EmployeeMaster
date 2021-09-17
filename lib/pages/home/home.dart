// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:empmaster/constants/gradients.dart';
import 'package:empmaster/widgets/clippers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final dateController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final width = mq.size.width;
    final height = mq.size.height;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(gradient: blackBlueGradient),
          ),
          Positioned(
            top: height * .065,
            left: 0.0,
            right: 0.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'Employee Master',
                  style: TextStyle(fontSize: 25.0),
                ),
              ],
            ),
          ),
          Center(
            child: ClipPath(
              clipper: EmployeeClip(),
              child: Container(
                height: height * .75,
                width: width * .9,
                decoration: BoxDecoration(gradient: greenSexyGradient),
                child: Form(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        TextFormField(
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            labelText: 'Employee Code',
                            focusColor: Colors.white,
                          ),
                          keyboardType: TextInputType.name,
                          onSaved: (val) {},
                          validator: (value) {},
                        ),
                        TextFormField(
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            labelText: 'Employee Name',
                            focusColor: Colors.white,
                          ),
                          keyboardType: TextInputType.name,
                          onSaved: (val) {},
                          validator: (value) {},
                        ),
                        TextFormField(
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            labelText: 'Address',
                            focusColor: Colors.white,
                          ),
                          keyboardType: TextInputType.name,
                          onSaved: (val) {},
                          validator: (value) {},
                        ),
                        TextFormField(
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            labelText: 'Mobile No.',
                            focusColor: Colors.white,
                          ),
                          keyboardType: TextInputType.phone,
                          onSaved: (val) {},
                          validator: (value) {},
                        ),

                        /// DOB
                        TextField(
                          readOnly: true,
                          controller: dateController,
                          decoration:
                              InputDecoration(hintText: 'Pick your Date'),
                          onTap: () async {
                            var date = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2100));
                            dateController.text =
                                date.toString().substring(0, 10);
                          },
                        ),
                        TextFormField(
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            labelText: 'Remarks',
                            focusColor: Colors.white,
                          ),
                          keyboardType: TextInputType.name,
                          onSaved: (val) {},
                          validator: (value) {},
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: Text('SAVE'),
                          color: Colors.lightBlueAccent,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
