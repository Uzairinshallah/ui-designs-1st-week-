import 'package:flutter/material.dart';

import 'firstbrkfst.dart';

class ListItems {
  String? dishType;
  String? dishName;
  String? imgUrl;
  String? dishCalories;
  String? op;

  ListItems({
    this.dishType,
    this.dishName,
    this.dishCalories,
    this.imgUrl,
  });
}

class buildertest extends StatelessWidget {
  buildertest({Key? key}) : super(key: key);

  List <ListItems> myList = [];

  @override
  Widget build(BuildContext context) {
    myList.add(ListItems(dishType: 'breakfast', dishName: 'oatmeal berries', dishCalories: '240 calories', imgUrl: 'https://cdn.pixabay.com/photo/2016/11/06/23/31/breakfast-1804457__340.jpg'));
    myList.add(ListItems(dishType: 'breakfast', dishName: 'mixed berry', dishCalories: '240 calories', imgUrl: 'https://cdn.pixabay.com/photo/2016/03/27/21/59/bread-1284438__340.jpg'));
    myList.add(ListItems(dishType: 'breakfast', dishName: 'egg toast', dishCalories: '240 calories', imgUrl: 'https://cdn.pixabay.com/photo/2016/11/29/11/15/fruits-1869132__340.jpg'));
    myList.add(ListItems(dishType: 'breakfast', dishName: 'yougart berries', dishCalories: '240 calories', imgUrl: 'https://cdn.pixabay.com/photo/2016/09/12/08/22/breakfast-1663295__340.jpg'));
    myList.add(ListItems(dishType: 'breakfast', dishName: 'omolette', dishCalories: '240 calories', imgUrl: 'https://cdn.pixabay.com/photo/2017/09/18/14/49/egg-sandwich-2761894__340.jpg'));
    myList.add(ListItems(dishType: 'breakfast', dishName: 'smoothie', dishCalories: '240 calories', imgUrl: 'https://cdn.pixabay.com/photo/2016/11/18/14/39/beans-1834984__340.jpg'));
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              Container(width: 20,),
              Text(
                "SWAP",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        body: Container(
          child: ListView.builder(
              itemCount: myList.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 0,
                  child: ListTile(
                    // leading: InkWell(
                    //   onTap: (){
                    //     Navigator.push(
                    //         context,
                    //         //MaterialPageRoute(builder: (context)=>First(listItems:myList[index],)),
                    //     );
                    //   },
                    // ),
                  ),
                );
              },

          ),
        ),
      ),
    );

  }
}
