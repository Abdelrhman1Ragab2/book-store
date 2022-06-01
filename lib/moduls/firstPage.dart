import 'package:asd/models/Author.dart';
import 'package:asd/models/Book.dart';
import 'package:asd/models/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
int cont=0;
class firstbage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() =>mystate();

}


//Color c1=Color.fromARGB(210, 38, 172, 168);
class mystate extends State<firstbage>
{

  var currentIndex=1;
List<Widget> listScreen=
[
 Author(),home(),Book()
];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        bottomNavigationBar: BottomNavigationBar(
               type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (index){
              setState(() {
                currentIndex=index;
              });
            },
            elevation: 250,
            items:
            [
              BottomNavigationBarItem(

                  icon: Icon(
                    Icons.person,size: 30,color: Colors.green,),
                label: "Author",
                   ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,size: 30,color: Colors.green,),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.collections_bookmark_outlined,size: 30,color: Colors.green,),
                label: "Book",
              ),

            ],
        ),
        appBar: AppBar(
         /* leading: IconButton(
            icon: Icon(
                Icons.arrow_back),
            onPressed:(){
              Navigator.pop(
                context,
                MaterialPageRoute(
                    builder: (context)=>MyApp()));
            },
          ),*/
          backgroundColor: Colors.blueGrey,
          title: Center(
            child: Text
              (
              "Booking Store",
              style: TextStyle
                (
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: listScreen[currentIndex],
        //backgroundColor: Color.fromARGB(100, 250, 75, 75),
      ),

    );
  }

}


