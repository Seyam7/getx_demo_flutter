import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/counter_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var counterController = Get.put(CounterCotroller());
    print('built func');

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
        child: Obx((){
          print('obx called');
          return Text(
            counterController.counter.value.toString(),
            style: TextStyle(
                fontSize: 50
            ),
          );
        }
        )
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: (){
              counterController.increment();
            },
            backgroundColor: Colors.green[400],
            child: Icon(Icons.add,color: Colors.white,size: 30),
          ),
          SizedBox(height: 10,),
          FloatingActionButton(
            onPressed: (){
              counterController.decrement();
            },
            backgroundColor: Colors.redAccent,
            child: Icon(Icons.remove,color: Colors.white,size: 30),
          ),
        ],
      )
    );
  }
}
