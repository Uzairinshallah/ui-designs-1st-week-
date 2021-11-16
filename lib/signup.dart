

import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';

class signup extends StatelessWidget {
  //signup({Key? key}) : super(key: key);
  late double width,height;
  @override
  Widget build(BuildContext context) {
    width = (MediaQuery.of(context).size.width);
    height = (MediaQuery.of(context).size.height);

    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: width,

            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 70,
                ),
                Image.asset('assets/images/pic.png'),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: width/1.2,

                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextFormField(

                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(3),
                              labelText: 'First Name',
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.blueGrey,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color:Colors.blueAccent,
                                    width: 2.0,
                                  )
                              )
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),

                        TextFormField(

                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(3),
                              labelText: 'Sur Name',
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.blueGrey,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color:Colors.blueAccent,
                                    width: 2.0,
                                  )
                              )
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),

                        SizedBox(
                          height: 15,
                        ),

                        TextFormField(

                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(3),
                              labelText: 'Email',
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.blueGrey,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color:Colors.blueAccent,
                                    width: 2.0,
                                  )
                              )
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),

                        SizedBox(
                          height: 15,
                        ),

                        TextFormField(

                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(3),
                            labelText: 'Password',
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.blueGrey,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color:Colors.blueAccent,
                                width: 2.0,
                              )
                            )
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),

                        TextFormField(

                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(3),
                              labelText: 'Preferred language',
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.blueGrey,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color:Colors.blueAccent,
                                    width: 2.0,
                                  )
                              )
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 15,),

                        RichText(
                            text:TextSpan(
                              children: [

                                const TextSpan(
                              text: 'I agree to the, ',
                              style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                              text: 'term and conditions,',
                              style: const TextStyle(color: Colors.blue),
                              recognizer: TapGestureRecognizer()
                              ..onTap = () { launch(
                                  'https://stackoverflow.com/questions/43583411/how-to-create-a-hyperlink-in-flutter-widget',
                              );
                              },
                              ),
                                const TextSpan(
                                  text: 'And i have read the,',
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextSpan(
                                  text: 'privacy policy..',
                                  style: const TextStyle(color: Colors.blue),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () { launch(
                                      'https://stackoverflow.com/questions/43583411/how-to-create-a-hyperlink-in-flutter-widget',
                                    );
                                    },
                                ),
                              ]
                            )),
                        SizedBox(height: 20,),
                        SizedBox(
                          width: 200,
                          height: 45,
                          child: ElevatedButton(

                            style: ElevatedButton.styleFrom(

                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0),
                              ),
                            ),
                            onPressed: () {},
                            child:
                            Text("Create Account".toUpperCase(), style: TextStyle(fontSize: 14)),
                          ),
                        ),
                      ],
                    ),
                  ),

                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

}
