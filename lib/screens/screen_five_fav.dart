import 'package:flutter/material.dart';
import '../controllers/fav_controller.dart';
import 'package:get/get.dart';

class ScreenFiveFav extends StatefulWidget {
  const ScreenFiveFav({super.key});

  @override
  State<ScreenFiveFav> createState() => _ScreenFiveFavState();
}

class _ScreenFiveFavState extends State<ScreenFiveFav> {
  @override
  Widget build(BuildContext context) {
    final FavController favoritecntrl = Get.put(FavController());
    return Scaffold(
      appBar: AppBar.new(title: Text("Fav App")),
      body: ListView.builder(
        itemCount: favoritecntrl.fruitList.length,
        itemBuilder: (context, index) => Card(
          elevation: 2,
          child: ListTile(
            onTap: () {
              if (favoritecntrl.tempFruitList.contains(
                favoritecntrl.fruitList[index].toString(),
              )) {
                favoritecntrl.removetoFav(
                  favoritecntrl.fruitList[index].toString(),
                );
              } else {
                favoritecntrl.addtoFav(
                  favoritecntrl.fruitList[index].toString(),
                );
              }
            },
            title: Text(
              favoritecntrl.fruitList[index].toString(),
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            trailing: Obx(
              () => Icon(
                Icons.favorite,
                color:
                    favoritecntrl.tempFruitList.contains(
                      favoritecntrl.fruitList[index].toString(),
                    )
                    ? Colors.red
                    : Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
