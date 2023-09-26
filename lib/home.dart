import 'package:flutter/material.dart';

class Droo extends StatefulWidget {
  const Droo({super.key});

  @override
  State<Droo> createState() => _DrooState();
}

class _DrooState extends State<Droo> {
String dropdownValue = 'one';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: Icon(Icons.menu),
                style: TextStyle(color: Color.fromARGB(255, 73, 55, 55)),
                underline: Container(
                  height: 10,
                  color: Colors.indigoAccent,
                ),
                onChanged: (String? newValue){
                  setState((){
                    dropdownValue = newValue!; 
                  });
                },
                items: [
                  DropdownMenuItem<String>(
                    value: 'one',
                    child: Text("one")),
                     DropdownMenuItem<String>(
                    value: 'two',
                    child: Text("two")),
                     DropdownMenuItem<String>(
                    value: 'three',
                    child: Text("three")),
                ],
              ),
            ),
          ],
        ),
 ),
);}}