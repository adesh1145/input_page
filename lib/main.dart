// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: inputPage(),
    );
  }
}

class inputPage extends StatefulWidget {
  const inputPage({super.key});

  @override
  State<inputPage> createState() => _inputPageState();
}

class _inputPageState extends State<inputPage> {
  var number=TextEditingController();
var password=TextEditingController();
var num="";
var pass="";
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Page"),
        
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  style: TextStyle(fontSize: 23,),
                  keyboardType: TextInputType.number,
                  controller: number,
                  decoration: InputDecoration(
                    hintText: "Enter Number",
                    
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.orange,
                      ),
                      ),
                    enabledBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.blue,
                      ),
                      ),
                    prefix: Icon(Icons.phone, color: Colors.orange,),
                    suffixIcon: IconButton(icon: Icon(Icons.remove_red_eye), onPressed: () {  },)
                  ),
                ),
                Container(height: 11,),
                TextField(
                  style: TextStyle(fontSize: 23,),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  controller: password,
                  decoration: InputDecoration(
                    hintText: "Password",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.orange,
                      ),
                      ),
                    enabledBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.blue,
                      ),
                      ),
                    prefix: Icon(Icons.password, color: Colors.orange,),
                    suffixIcon: IconButton(icon: Icon(Icons.remove_red_eye), onPressed: () {  },)
                  ),
                ),

                ElevatedButton(
                 onPressed: () { 
                  setState(() {
                    num=number.text.toString();
                   pass=password.text.toString();
                  });
                  },
                 child: Text("Submit"),
                  ),
              Text("$num $pass"),
              ],
            ),
        ),
      ),
    );
  }
}
