import 'dart:async';
import 'package:flutter/material.dart';
import 'firstPage.dart';
import 'rigister.dart';

class splashScrean extends StatefulWidget
{
  const splashScrean({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() =>Mysplash();

}
class Mysplash extends State<splashScrean>
{

  initState()
  {
    super.initState();
    Timer(Duration(milliseconds:3000),
            (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>MyApp()),);
        }
    );
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(250, 200, 150, 100),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  width: 300,
                  height: 300,
                  image: AssetImage("assets/images/images (78).jpeg"),
                ),
                Text("Book Store"
                  ,style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Color.fromARGB(255, 243, 171, 182),
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),),
              ],
            ),
          ),

        ),
      ),
    );
  }

}
class MyApp extends StatefulWidget
{
  const MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() =>Mystate();

}

Color col=Colors.white;
Color valid=Colors.green;
Color invalid=Colors.red;
var checK=" ";
bool flag=true;
Icon ic=Icon(Icons.remove_red_eye_sharp);
var email = TextEditingController();
var pass = TextEditingController();
var formkey =GlobalKey<FormState>();

class Mystate extends State<MyApp>
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Center(
            child: Text("Book Store",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),),
          ),
          /*leading: IconButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  myApp()),
              );
            },icon: Icon(Icons.arrow_forward),),*/
        ),
        body: Container(

          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Image(
                    image: AssetImage("assets/images/images (77).jpeg"),
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    "Welcom back!",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "log in to your exisant account of bookstore",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text("$checK",
                    style: TextStyle(
                      color: col,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.all(10),
                    child: TextFormField(

                      validator: (value){
                        if(value!.isEmpty)
                        {
                          return "email can not empty";
                        }
                        else{return null;}

                      },
                      controller: email,
                      decoration:  InputDecoration(
                        labelText: "Email",
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(
                          color: Colors.blue,
                          fontSize: 14.0,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: double.infinity,
                          child: TextFormField(
                            validator: (value){
                              if(value!.isEmpty)
                              { return "password can not empty";}
                              else{return null;}
                            },
                            controller: pass,
                            decoration:  InputDecoration(
                              labelText: "passwoard",
                              prefixIcon: Icon(Icons.lock_outline_rounded),
                              suffixIcon:  IconButton(
                                  onPressed: (){
                                    setState(() {
                                      Icon ic1=Icon(Icons.remove_red_eye_outlined);
                                      Icon ic2=Icon(Icons.remove_red_eye_sharp);
                                      flag=!flag;
                                      (flag)? ic=ic1 : ic=ic2;
                                    });
                                  }, icon:ic),
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(
                                color: Colors.blue,
                                fontSize: 14.0,
                              ),
                            ),
                            obscureText: flag,
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ),
                      ),

                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [
                        Container(
                          width: 200,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: MaterialButton(
                            onPressed: () {

                              if((pass.text=="123456" && email.text=="abdelrhman@gmail.com") || (pass.text=="123456" && email.text=="mohamed@gmail.com"))
                              { Navigator.pushReplacement( context,
                                MaterialPageRoute(builder: (context) =>  firstbage()),
                              );}
                              else
                              { setState(() {checK="invalid login"; col=invalid;}); }
                              formkey.currentState!.validate();
                            },
                            child: Container(
                              child: Text(
                                  "LOG IN",
                                  style: TextStyle(
                                    color: Colors.white,
                                    backgroundColor: Colors.blueAccent,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text("forget password?",
                          style: TextStyle(
                            color: Color.fromARGB(250, 200, 150, 100),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ]
                  ),

                  const SizedBox(
                    height: 20,),
                  const Text(
                    "or connect using ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      Container(
                        width: 140,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.pushReplacement( context,
                              MaterialPageRoute(builder: (context) =>  firstbage()),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                            ),
                            child: Row(
                                children: [
                                  Icon(
                                    Icons.face,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 5.0,),
                                  Text(
                                    "Faceboke",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ]
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 140,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Rgster()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                            ),
                            child: Row(

                                children: [
                                  Icon(
                                    Icons.email_sharp,
                                    color: Colors.white,),
                                  SizedBox(width: 5,),
                                  Text(
                                    "Gmail",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ]
                            ),
                          ),

                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}