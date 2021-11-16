import 'package:flutter/material.dart';

class questioner extends StatefulWidget {
  questioner({Key? key}) : super(key: key);

  @override
  State<questioner> createState() => _questionerState();
  }

class _questionerState extends State<questioner> {
  late double width,height;

  late List <bool> _check ;
  void initState()
  {
    super.initState();
    _check = List<bool>.filled(5,false);
  }


  @override
  Widget build(BuildContext context) {
    width = (MediaQuery.of(context).size.width);
    height = (MediaQuery.of(context).size.height);
    return MaterialApp(
    home: Scaffold(
      body: Column(
      children: [
        Container(
          color: Colors.deepPurpleAccent,
          width: width,
          height: height/3.7,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.close,
                  color: Colors.white,

                ),
                SizedBox(
                  height: 70,
                ),
                Text(
                  'QUESTION 1 OF 7',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'What is your food preference?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,

                  ),
                ),


              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context,index)
              {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Checkbox(value: _check[index], onChanged: (bool? va ) {
                        setState(()
                        {
                          _check[index] = va!;
                        },
                        );
                      } ),
                      Text("option 1")
                      // alloptions('Option A'),
                      // alloptions('Option B'),
                    ],
                  ),
                );
              }
          ),
        )

      ],
      ),
    )

    );
  }

  Text alloptions(
      String op1
      ) { return Text(op1);}
}
