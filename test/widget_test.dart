
import'package:flutter/material.dart';
main()
{

  runApp(app());
}

class app extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
    return Userchat();

  }
}

class Userchat extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title:Text(
            "user"
        ),
      ),
      body:SingleChildScrollView(

        child: Column(

            children:
            [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ListView.separated(
                  itemBuilder: (contxt ,index)=>build_item_story(),
                  separatorBuilder: (contxt ,index)=>SizedBox(
                    width: 25.0,

                  ),
                  itemCount: 10,
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 5,
              ),
              ListView.separated(
                physics:NeverScrollableScrollPhysics() ,
                shrinkWrap: true,
                itemBuilder: (contxt ,index)=>build_item(),
                separatorBuilder: (contxt ,index)=> Container(
                  width: double.infinity,
                  color: Colors.black38,
                  height: 1,
                ) ,
                itemCount: 10,
              )
            ]
        ),
      ),
    );


  }

  Widget build_item_story()=>Row(
    children: [
      CircleAvatar(
        radius: 25.0,
        child: Text(
          "1",
          style: TextStyle(
            color: Colors.amber,
            backgroundColor: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
  Widget build_item()=>Row(
    children: [
      CircleAvatar(
        radius: 25.0,
        child: Text(
          "1",
          style: TextStyle(
            color: Colors.amber,
            backgroundColor: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Column(
        children: [
          Text(
            "Emad alsalm",
            style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.black,
              fontSize: 20.5,
            ),
          ),
          Text(
            "this massage ........",
            style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.black,
              fontSize: 20.5,

            ),
          ),

        ],
      ),
    ],
  );
}