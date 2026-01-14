import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/controllers/counter_controller.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    final counterController controller = Get.put(counterController());
    return Scaffold(
      appBar: AppBar.new(title: Text("Screen three")),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,

          children: [
            //Automatic listen and change
            Center(
              child: Obx(
                () => Text(
                  controller.counter.value.toString(),
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),

            OutlinedButton(
              onPressed: () {
                controller.incrementCounter();
              },
              child: Text("Increment"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
                Get.back(); //by using two times get.back it moves in first screen
              },
              child: Text("Go back", style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            ),

            SizedBox(height: 30,),
            TextButton(onPressed: (){
              Get.toNamed('/ScreenFour');
            }, child: Text("go to ScreenFour"))
          ],
        ),
      ),
    );
  }
}
