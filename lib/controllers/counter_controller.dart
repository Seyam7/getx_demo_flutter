import 'package:get/get.dart';

class CounterCotroller extends GetxController{
  RxInt counter = 0.obs;

  increment(){
    counter++;
    update();
  }
  decrement(){
    counter--;
    update();
  }

}