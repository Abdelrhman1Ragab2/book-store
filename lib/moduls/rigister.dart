import 'package:flutter/material.dart';
import 'loginscreen.dart';
class Rgster extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => RigisterState();
}
var repass = TextEditingController();
class RigisterState extends State<Rgster>
{

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
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
        leading: IconButton(
          onPressed: (){
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) =>  MyApp()),
            );
          },icon: Icon(Icons.arrow_back),),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Image(
              image: AssetImage("assets/images/download (13).jpeg"),
              width: 200,
              height: 200,
              fit: BoxFit.cover,
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
              padding: const EdgeInsetsDirectional.all(10.0),
              child: TextFormField(

                validator: (value){
                  if(value!.isEmpty)
                  {
                    return "email can not empty";
                  }
                  else{return null;}

                },
                controller: email,
                decoration: const InputDecoration(
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
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      validator: (value){
                        if(value!.isEmpty)
                        { return "RePassword can not empty";}
                        else{return null;}
                      },
                      controller: repass,
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

                  Container(
                    width: 200,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: MaterialButton(
                      onPressed: () {

                        if(pass.text==repass.text && email.text.isNotEmpty)
                            {
                            //insertTodatabase();
                            Navigator.pop(
                            context,
                            MaterialPageRoute(builder: (context)=>MyApp()));
                            }
                        else
                        { setState(() {checK="invalid register"; col=invalid;}); }
                        formkey.currentState!.validate();
                      },
                      child: Container(
                        child: Text(
                            "Sign IN",
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


          ],
        ),
      ),
    );
  }

}