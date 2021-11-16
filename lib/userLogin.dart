import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:ui_two/signup.dart';
import 'package:google_fonts/google_fonts.dart';


class userLogin extends StatefulWidget {
  userLogin({Key? key}) : super(key: key);

  @override
  State<userLogin> createState() => _userLoginState();
}

class _userLoginState extends State<userLogin> {
  late double screenWidth,screenHeight;

  String col='a';
  final Color user_vender_c = Color(0xff8DD4CE);
  final Color textfield_border = Color(0xff42B9AE);
  final Color vendor_login = Color(0xff485F8B);
  final Color vendor_loginnn = Color(0xffA2B0C9);
  final Color forget = Color(0xffED5929);


  @override
  Widget build(BuildContext context) {
    screenWidth = (MediaQuery.of(context).size.width);
    screenHeight = (MediaQuery.of(context).size.height);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 65,),
              Image.asset('assets/images/pic.png'),
              SizedBox(
                height:45,
              ),
              Container(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      InkWell(

                        onTap:(){
                          col = 'a';
                          setState(() {  });
                        },
                        child: Container(

                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Text(
                              'User',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Jua',
                                fontSize: 15.2,
                                fontWeight: FontWeight.bold,
                                color: col == 'a' ? user_vender_c : Colors.white,

                              ),

                            ),
                          ),
                          width: 150,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: col == 'a' ? Colors.white : vendor_loginnn,

                          ),

                        ),


                      ),

                      InkWell(
                        onTap: ()
                        {
                          col = 'b';
                          setState(() {  });
                        },
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Text(
                                'Vendor',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Jua',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.2,
                                  color: col == 'b' ? vendor_loginnn : Colors.white,
                                ),
                              ),
                            ),
                          ),
                          width: 150,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: col == 'b' ? Colors.white : user_vender_c,

                          ),
                        ),
                      ),

                    ],
                ),

                width: 307,
                height: 52,
               // color: Colors.deepPurple,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: col == 'a' ? user_vender_c : vendor_loginnn,


                ),

              ),
              SizedBox(
                height:45,
              ),
              SizedBox(
                width: screenWidth/1.1,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                     contentPadding: EdgeInsets.all(20),
                      hintText: 'Email Address',
                      hintStyle: TextStyle(
                        fontFamily: 'Quicksand-Bold',
                        fontSize: 12,
                      ),
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color : col == 'a' ? textfield_border : vendor_loginnn,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color : col == 'a' ? textfield_border : vendor_loginnn,
                            width: 2.0,
                          )
                      )
                  ),
                ),
              ),
              SizedBox(
                height:10,
              ),
              SizedBox(
                width: screenWidth/1.1,
                height: 40,
                child: SizedBox(
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          fontFamily: 'Quicksand-Bold',
                          fontSize: 12,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color : col == 'a' ? textfield_border : vendor_loginnn,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              color : col == 'a' ? textfield_border : vendor_loginnn,
                              width: 2.5,
                            )
                        )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                children:[

                  Container(width: screenWidth/15,height: 14,),
                  Text(
                      'Remember Me',
                      style: TextStyle(
                        fontFamily: 'Quicksand-Bold',
                        color: forget,
                        fontSize: 11.4,
                      ),
                  ),
                  Container(
                    width: ( screenWidth/2.9),
                    height: 10,

                  ),
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                      fontFamily: 'Quicksand-Bold',
                      color: forget,
                      fontSize: 11.4,
                    ),
                  ),
                ]
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 175,
                height: 47,
                child: ElevatedButton(

                  style: ElevatedButton.styleFrom(

                    primary: col == 'a' ? user_vender_c : vendor_loginnn,


                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),

                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => signup()),
                    );
                  },
                  child:
                  Text(
                      "Login", style: TextStyle(
                    fontSize: 17.1,
                    fontFamily: 'Jua',
                  )),
                ),
              ),
              SizedBox(
                height:10,
              ),
              Text(
                'Or Sigin With',
                style:TextStyle(
                  fontSize: 13.3,
                  color: forget,
                  fontFamily: 'Quicksand-Bold',


                ),
              ),
              SizedBox(
                height:30,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(width: screenWidth/100, height: 20),


                  InkWell(

                    onTap:(){
                      // col = 'a';
                      // setState(() {  });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                          border: Border.all(
                            color: textfield_border,
                            width: 3,

                          )),

                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.facebook,
                              color: Colors.indigo,
                              size: 30,
                            ),
                            Container(width: 10, height: 10,),
                            Text(
                              'Facebook',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontFamily: 'Quicksand-Bold',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo,

                              ),

                            ),
                          ],
                        ),
                      ),
                      width: 170,
                      height: 60,


                    ),


                  ),



                  Container(width: 10, height: 10),


                  InkWell(

                    onTap:(){
                      // col = 'a';
                      // setState(() {  });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                          border: Border.all(
                            color: textfield_border,
                            width: 3,

                          )),

                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Icon(
                                Icons.email_rounded,
                                color: forget,
                            ),
                            Container(width: 10, height: 10,),
                            Text(
                              'Google',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Quicksand-Bold',
                                fontWeight: FontWeight.bold,
                                color: forget,

                              ),

                            ),
                          ],
                        ),
                      ),
                      width: 150,
                      height: 60,


                    ),


                  ),




                ],

              ),
              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                  children:[
                    Container(width: screenWidth/20,height: 10,),
                    Text(
                      'Don\'t Have An Account?',
                      style: TextStyle(
                        color: vendor_loginnn,
                      ),
                    ),
                    Container(width: screenWidth/35,height: 10,),
                    Text(
                      'Register Now',
                      style: TextStyle(
                        color: forget,
                      ),
                    ),
                  ]
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children:[
                    Container(width: screenWidth/20,height: 10,),
                    Text(
                      'Term & conditions  ',

                      style: TextStyle(
                        color: Colors.grey,
                        decoration: TextDecoration.underline,

                      ),
                    ),
                    SizedBox(
                      height: 20,
                        width:15,
                        child: Image.asset('assets/images/dot.png')),
                    Container(width: screenWidth/35,height: 5,),
                    Text(
                      'Privicy policy',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.grey,

                          fontFamily: 'Jua',
                      ),
                    ),
                  ]
              ),

            ],


          ),
        ),
      ),
    );
  }
}
