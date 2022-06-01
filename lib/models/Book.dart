import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'list.dart';

class Book extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() =>bookState();

}
class bookState extends State<Book>
{
  var email=TextEditingController();
  var pass =TextEditingController();
  @override
  Widget build(BuildContext context)
  {
    return Container(
      color: Color.fromARGB(250, 200, 150, 100),
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
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

            Padding(
              padding: const EdgeInsets.all(3.0),
              child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (contxt,index)=>bild_item(bookList[index]),
                  separatorBuilder: (contxt,index)=>SizedBox(height: 5,),
                  itemCount: bookList.length,
              ),
            ),

          ],
        ),
      ),
    );
  }
  Widget bild_item(data_model lists)=>Container(
    height: 120,

    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.black26,
    ),
    child: Row(
      children:
      [
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 8.0),
          child: Container(

            width: 100,
            height: 100,
            child: Image(
              image:AssetImage("${lists.image}"),
              width: 100,
              height: 100,
              fit: BoxFit.cover,

            ),
          ),
        ) ,
        SizedBox(width: 15,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              Text("${lists.book}",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 5,),
              Text("${lists.writer}",
                style: TextStyle(
                  color: Color.fromARGB(233, 200, 20, 14),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),),
              SizedBox(height: 5,),
              Text("${lists.salary}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),),
              SizedBox(height: 5,),
            ],
          ),
        ),
      ],
    ),
  );
}