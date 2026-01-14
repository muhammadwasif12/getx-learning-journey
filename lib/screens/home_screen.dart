import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:getxlearning/screens/screen_two.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Learning class 1"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Card(
            elevation: 2,
            child: ListTile(
              title: Text("Delete"),
              subtitle: Text("Delete this chat!"),
              onTap: () {
                Get.defaultDialog(
                  title: "Delete this chat",
                  middleText: "this is your chat data do u want to delete?",
                  contentPadding: EdgeInsets.all(20),
                  titlePadding: EdgeInsets.only(top: 20),
                  confirm: TextButton(onPressed: () {}, child: Text("yes")),
                  cancel: TextButton(
                    onPressed: () {
                      // Navigator.of(context).pop();
                      Get.back(); //same work as pop
                    },
                    child: Text("No"),
                  ),
                  content: Column(
                    children: [
                      Text("del"),
                      Text("del"),
                      Text("del"),
                      Text("del"),
                      Text("del"),
                    ],
                  ),
                );
              },
            ),
          ),
          Card(
            elevation: 2,
            child: ListTile(
              title: Text("getx bottomsheet"),
              subtitle: Text("see your Bottomsheet using getx"),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(color: Colors.black45, offset: Offset(12, 3)),
                      ],
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("Light Theme"),
                          leading: Icon(Icons.sunny),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          title: Text("Dark Theme"),
                          leading: Icon(Icons.dark_mode),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 50),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Get.to(ScreenTwo());
                //   using routes
                Get.toNamed(
                  "/ScreenTwo",
                  arguments: ["Wasif", "I am a flutter dev "],
                );
              },
              child: Text(
                "Go to screen2",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            "Wasif",
            "Hey he is flutter dev!",
            duration: Duration(seconds: 4),
            backgroundColor: Colors.greenAccent,
            icon: Icon(Icons.add),
            snackPosition: SnackPosition.BOTTOM,
          );
        },
        child: Text("I!"),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
