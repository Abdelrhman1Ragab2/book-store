import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'list.dart';

class home extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() =>homeState();

}
class homeState extends State<home>
{
  var email=TextEditingController();
  var pass =TextEditingController();
  @override
  Widget build(BuildContext context)
  {
    return Container(
      color: Color.fromARGB(250, 116, 172, 187),
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              color: Colors.white,
              child: TextFormField(
                keyboardType: TextInputType.multiline,
                decoration:InputDecoration(
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.search),
                  hintText: "Search bar",
                ),
              ),
            ),

            Text("best seller",
               style: TextStyle(
                 fontSize: 30,
                 fontWeight: FontWeight.bold,

               ),
            ),
            Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (contxt,index)=>bild_item(bookList[index]),
                  separatorBuilder: (contxt,index)=>SizedBox(width: 5,),
                  itemCount: bookList.length,
                ),
              ),
            ),
            Text("most reading ",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,

              ),
            ),
            Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (contxt,index)=>bild_item(bookList[index]),
                  separatorBuilder: (contxt,index)=>SizedBox(width: 5,),
                  itemCount: bookList.length,
                ),
              ),
            ),
            Text("most borrowed",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,

              ),
            ),
            Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (contxt,index)=>bild_item(bookList[index]),
                  separatorBuilder: (contxt,index)=>SizedBox(width: 5,),
                  itemCount: bookList.length,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
  Widget bild_item(data_model lists)=>Container(
    height: 200,
    width: 220,
    decoration: BoxDecoration(
    ),
    child: Column(
      crossAxisAlignment:CrossAxisAlignment.start ,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        Image(image: AssetImage("assets/images/download (12).jpeg"),
          width: 250,height: 150,fit: BoxFit.cover,),
        SizedBox(height: 5),
        Container(
          color: Colors.blueGrey,
          width: 220,
          height: 30,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MaterialButton(
                onPressed: (){},
                child: Row(
                  children: [
                    Icon(Icons.flag,size: 25,),
                    SizedBox(width: 5,),
                    Text("Like"),
                           ],
                          ),
                     ),
              MaterialButton(
                onPressed: (){},
                child:Row(
                      children:
                    [
                      Icon(Icons.comment,size: 25,),
                      SizedBox(width: 5,),
                      Text("comment"),
                    ],
                  ),
                ),
            ],
          ),
        )
      ],
    ),

  );
}