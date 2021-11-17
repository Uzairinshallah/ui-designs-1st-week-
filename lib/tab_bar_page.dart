import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_two/list_items_class.dart';

List<String> user_names =['Ali Raza','Umar','Ahmed','Uzair','Ali ahmad',' Talha','ali sajid','Uzair ali','Furman','furkan','raza ali','ahmaed ','noor ali','ali butt','uzzir ','zaddy','uzair ali','ahawd','eqwdfwed','qwdd'];
List<String> image_url  =[
  'https://cdn.pixabay.com/photo/2015/09/24/17/04/couple-955926__340.jpg',
  'https://cdn.pixabay.com/photo/2018/09/12/12/14/man-3672010__340.jpg',
  'https://cdn.pixabay.com/photo/2015/01/26/22/40/child-613199__340.jpg',
  'https://cdn.pixabay.com/photo/2015/01/26/22/40/child-613199__340.jpg',
  'https://cdn.pixabay.com/photo/2017/10/18/10/49/umbrella-2863648__340.jpg',
  'https://cdn.pixabay.com/photo/2016/11/21/12/42/beard-1845166__340.jpg',
  'https://cdn.pixabay.com/photo/2017/08/12/18/31/male-2634974__340.jpg',
  'https://cdn.pixabay.com/photo/2016/09/24/03/20/man-1690965__340.jpg',
  'https://cdn.pixabay.com/photo/2016/11/29/03/15/man-1867009__340.jpg',
  'https://cdn.pixabay.com/photo/2016/11/20/12/03/brown-leather-shoes-1842606__340.jpg',
  'https://cdn.pixabay.com/photo/2015/08/05/04/02/people-875597__340.jpg',
  'https://cdn.pixabay.com/photo/2015/08/05/04/02/people-875597__340.jpg',
  'https://cdn.pixabay.com/photo/2021/05/25/04/19/boy-6281260__340.jpg',
  'https://cdn.pixabay.com/photo/2021/05/25/04/19/boy-6281260__340.jpg',
  'https://cdn.pixabay.com/photo/2019/08/09/08/12/tattoo-4394609__340.jpg',
  'https://cdn.pixabay.com/photo/2016/06/28/19/25/man-1485335__340.jpg',
  'https://cdn.pixabay.com/photo/2016/06/28/19/25/man-1485335__340.jpg',
  'https://cdn.pixabay.com/photo/2015/10/09/21/28/man-979980__340.jpg',
  'https://cdn.pixabay.com/photo/2017/07/31/14/55/black-and-white-2558273__340.jpg',
  'https://cdn.pixabay.com/photo/2017/11/02/14/27/model-2911332__340.jpg',

];
Column chats_function( int a)
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:  [

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text(user_names[a]),
          contentPadding: const EdgeInsets.all(5),
          //trailing: Text(user_names[a]),


          subtitle: Text('Click here to message '+user_names[a]),
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(image_url[a]),

            ),
          ),
        ),
    ],
  );
}

Column calls_function( int a)
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:  [

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text(user_names[a]),
          contentPadding: const EdgeInsets.all(5),
          trailing: IconButton(
            icon: FaIcon(FontAwesomeIcons.phone), onPressed: () {  },
            iconSize: 15,

          ),


          subtitle: Text('Click here to call '+user_names[a]),
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(image_url[a]),

          ),
        ),
      ),
    ],
  );
}


class tab_class extends StatefulWidget {
  const tab_class({Key? key}) : super(key: key);

  @override
  State<tab_class> createState() => _tab_classState();
}

class _tab_classState extends State<tab_class> {



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [
                IconButton(
                    iconSize: 20,
                    onPressed: (){},
                    icon: const FaIcon(FontAwesomeIcons.search)),
                IconButton(
                    iconSize: 20,
                    onPressed: (){},
                    icon: const FaIcon(FontAwesomeIcons.ellipsisV)

                ),
              ],
            ),


          ],
          backgroundColor: Colors.blueGrey,
          title: const Text('WhatsApp', style: TextStyle(),),
          bottom:   const TabBar(
            tabs: <Widget>[
              Tab(
                child: Tab(
                  child : Text('Chats'),
                ),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              ),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  for(int i=0;i<20;i++)
                    chats_function(i),
                ],
              ),
            ),
            Text('data2'),
            SingleChildScrollView(
              child: Column(
                children: [
                  for(int i=0;i<20;i++)
                    calls_function(i),
                ],
              ),
            ),
          ],
        ),


      ),
    );
  }
}

