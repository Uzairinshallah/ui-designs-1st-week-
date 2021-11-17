import 'package:flutter/material.dart';
import 'package:ui_two/list_items_class.dart';
import 'package:ui_two/list_builder.dart';

class First extends StatelessWidget {
  First({
    Key? key,
    required this.listItems,
  }) : super(key: key);

  //List<ListItems> myList = [];
  ListItems listItems = ListItems();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(0.0),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              Container(width: 20,),
              const Text(
                "SWAP",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Image.network(listItems.imgUrl!),
            ),
            const Divider(
              height: 20,
            ),
            Text(
              'Dish Name     : ' + listItems.dishName!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Dish Calories : ' + listItems.dishCalories!),
            Text('Dish Type       : ' + listItems.dishType!),
          ],
        ),
      ),
    );
  }
}
