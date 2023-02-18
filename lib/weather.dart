import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Text('Button 1'),
    Text('Button 2'),
    Text('Button 3'),
    Text('Button 4'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Container(
  
        color: Colors.blue,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => _onItemTapped(0),
                  style: ElevatedButton.styleFrom(
                    primary: _selectedIndex == 0 ? Colors.white : Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  child: Text(
                    "Addis Ababa",
                    style: TextStyle(
                        color:
                            _selectedIndex == 0 ? Colors.blue : Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _onItemTapped(1),
                  style: ElevatedButton.styleFrom(
                    primary: _selectedIndex == 1 ? Colors.white : Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  child: Text(
                    "Bahirdar",
                    style: TextStyle(
                        color:
                            _selectedIndex == 1 ? Colors.blue : Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _onItemTapped(2),
                  style: ElevatedButton.styleFrom(
                    primary: _selectedIndex == 2 ? Colors.white : Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  child: Text(
                    "Hawassa",
                    style: TextStyle(
                        color:
                            _selectedIndex == 2 ? Colors.blue : Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _onItemTapped(3),
                  style: ElevatedButton.styleFrom(
                    primary: _selectedIndex == 3 ? Colors.white : Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  child: Text(
                    "Diredawa",
                    style: TextStyle(
                        color:
                            _selectedIndex == 3 ? Colors.blue : Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 250,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Saturday, February 19, 2023",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
    // Show the bottom sheet when the icon is tapped
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Card(
                child: Container(
                  width: 100,
                  height: 100,
                  child: Center(
                    child: Text('Monday'),
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: 100,
                  height: 100,
                  child: Center(
                    child: Text('Tuesday'),
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: 100,
                  height: 100,
                  child: Center(
                    child: Text('Wednesday'),
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: 100,
                  height: 100,
                  child: Center(
                    child: Text('Thursday'),
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: 100,
                  height: 100,
                  child: Center(
                    child: Text('Friday'),
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: 100,
                  height: 100,
                  child: Center(
                    child: Text('Saturday'),
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: 100,
                  height: 100,
                  child: Center(
                    child: Text('Sunday'),
                  ),
                ),
              ),
            ],
          ),   
        );
      },
    );
  },
              child: Icon(color: Colors.white, Icons.arrow_downward),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              child: Image.asset('assets/images/cloud.png'),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
                style: TextStyle(
                    fontSize: 100,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                "69")
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Text(
            style: TextStyle(
              fontWeight: FontWeight.w200,
              color: Colors.white,
              fontSize: 30,
            ),
            "Fairly Decent"),
        SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: () {
            _showBottomSheet(context);
          },
          style: ElevatedButton.styleFrom(
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.only(
                  top: 15, bottom: 15, left: 40, right: 40)),
          child: Text(
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
              ),
              "See Details          > "),
        ),
      ],
    ),
  ),
);
}
}

void _showBottomSheet(BuildContext context) {
showModalBottomSheet(
context: context,
builder: (BuildContext context) {
  return Container(
      height: 400, 
      child: ListView(children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'The weather will be chilly tomorrow',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: Color.fromARGB(255, 233, 240, 254),
          child: Container(
            height: 60,
            child: Row(
              children: [
                Container(
                  width: 8,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Text(
                  "Monday",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    "87"),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.arrow_forward_ios),
                ),
                SizedBox(width: 16),
              ],
            ),
          ),
        ),
        Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: Color.fromARGB(255, 233, 240, 254),
          child: Container(
            height: 60,
            child: Row(
              children: [
                Container(
                  width: 8,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Text(
                  "Tuesday",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    "56"),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.arrow_forward_ios),
                ),
                SizedBox(width: 16),
              ],
            ),
          ),
        ),
        Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: Color.fromARGB(255, 233, 240, 254),
          child: Container(
            height: 60,
            child: Row(
              children: [
                Container(
                  width: 8,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Text(
                  "Wednesday",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    "69"),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: Icon(Icons.arrow_forward_ios),
                ),
                SizedBox(width: 16),
              ],
            ),
          ),
        ),
        Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: Color.fromARGB(255, 233, 240, 254),
          child: Container(
            height: 60,
            child: Row(
              children: [
                Container(
                  width: 8,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Text(
                  "Thursday",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    "83"),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.arrow_forward_ios),
                ),
                SizedBox(width: 16),
              ],
            ),
          ),
        ),
        Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: Color.fromARGB(255, 233, 240, 254),
          child: Container(
            height: 60,
            child: Row(
              children: [
                Container(
                  width: 8,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Text(
                  "Friday",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    "45"),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.arrow_forward_ios),
                ),
                SizedBox(width: 16),
              ],
            ),
          ),
        ),
        Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: Color.fromARGB(255, 233, 240, 254),
          child: Container(
            height: 60,
            child: Row(
              children: [
                Container(
                  width: 8,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Text(
                  "Saturday",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    "79"),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.arrow_forward_ios),
                ),
                SizedBox(width: 16),
              ],
            ),
          ),
        ),
        Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: Color.fromARGB(255, 233, 240, 254),
          child: Container(
            height: 60,
            child: Row(
              children: [
                Container(
                  width: 8,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Text(
                  "Sunday",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    "79"),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.arrow_forward_ios),
                ),
                SizedBox(width: 16),
              ],
            ),
          ),
        ),
      ]));
},
);
}
