import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/controllers/image_controller.dart';
import 'package:getxlearning/controllers/notification_controller.dart';
import '../controllers/example2_controller.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  @override
  Widget build(BuildContext context) {
    final imageController imgctrl = Get.put(imageController());
    final notification_controller notifycontroller = Get.put(
      notification_controller(),
    );
    final example2controller opacitycontroller = Get.put(example2controller());
    return Scaffold(
      appBar: AppBar(title: Text("Screen Four"), centerTitle: true),
      body: Column(
        mainAxisAlignment: .start,
        children: [
          Center(
            child: Obx(
              () => Container(
                color: Colors.red.withOpacity(opacitycontroller.opactiy.value),
                height: 170,
                width: 240,
              ),
            ),
          ),
          SizedBox(height: 15),
          Obx(
            () => Slider(
              value: opacitycontroller.opactiy.value,
              onChanged: (value) {
                opacitycontroller.setOpacity(value);
              },
            ),
          ),
          SizedBox(height: 40),

          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text("Notifications"),
              Obx(
                () => Switch(
                  value: notifycontroller.notify.value,
                  onChanged: (value) {
                    notifycontroller.setNotification(value);
                  },
                ),
              ),
            ],
          ),

          SizedBox(height: 30),
          TextButton(
            onPressed: () {
              Get.toNamed("/ScreenFive");
            },
            child: Text("go to ScreenFav"),
          ),

          SizedBox(height: 30),
          Obx(
            () => Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: imgctrl.imagepath.isNotEmpty
                    ? FileImage(File(imgctrl.imagepath.toString()))
                    : null,
              ),
            ),
          ),

          TextButton(
            onPressed: () {
              imgctrl.getImage();
            },
            child: Text("Pick Image"),
          ),
        ],
      ),
    );
  }
}
