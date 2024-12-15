import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    print('I am here');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Center(
          child: Text(
              'State Management',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
        ),
      ),
      body: Center(
        child: Text(
          '0',
        style: TextStyle(
          fontSize: 50
        ),),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {

            });
          },
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.add,color: Colors.white,size: 30),
      ),
    );
  }
}
