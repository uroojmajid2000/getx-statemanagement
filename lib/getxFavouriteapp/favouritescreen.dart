import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_getx/getxFavouriteapp/favouritecontroller.dart';
import 'package:flutter_getx/getxswitchbutton/switchcontroller.dart';
import 'package:get/get.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  final FavouriteController favouriteController =
      Get.put(FavouriteController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FavouriteScreen"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: favouriteController.fruitsList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      if (favouriteController.tempList
                          .contains(favouriteController.fruitsList[index])) {
                        print("remove");
                        // tempList.remove(fruitsList[index]);
                        favouriteController.fruitsRemove(
                            favouriteController.fruitsList[index]);
                      } else {
                        favouriteController
                            .fruitsAdd(favouriteController.fruitsList[index]);

                        print("add");
                      }
                      setState(() {});
                    },
                    title: Text(favouriteController.fruitsList[index]),
                    trailing: favouriteController.tempList
                            .contains(favouriteController.fruitsList[index])
                        ? Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : Icon(
                            Icons.favorite_border,
                            color: Colors.black,
                          ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
