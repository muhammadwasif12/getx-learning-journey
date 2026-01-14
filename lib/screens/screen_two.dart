import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/screens/screen_three.dart';

class ScreenTwo extends StatefulWidget {
  ScreenTwo({super.key, this.name});
  var name;
  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    //final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      appBar: AppBar.new(title: Text("Screen Two" + Get.arguments[0])),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   color: Colors.orange,
            //   height: Get.height * .1,
            //   width: Get.width * .3,
            // ),
            ListTile(title: Text('message'.tr), subtitle: Text('name'.tr)),

            OutlinedButton(
              onPressed: () {
                Get.updateLocale(Locale('en', 'US'));
              },
              child: Text("English"),
            ),
            OutlinedButton(
              onPressed: () {
                Get.updateLocale(Locale('ur', 'PK'));
              },
              child: Text("Urdu"),
            ),
            ElevatedButton(
              onPressed: () {
                // Get.to(ScreenThree());
                Get.toNamed("/ScreenThree");
              },
              child: Text(
                "Go to screen3",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
