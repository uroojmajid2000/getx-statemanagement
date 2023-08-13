import 'package:flutter/material.dart';
import 'package:flutter_getx/screenone.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text("Getx Dialog Alert"),
                subtitle: Text("get dialod alert using getx"),
                onTap: () {
                  Get.defaultDialog(
                    title: "Dialog Alert",
                    // middleText: "Are you sure you want to delete?",
                    contentPadding: EdgeInsets.all(10),
                    // onConfirm: () {},
                    // onCancel: () {},
                    content: Column(
                      children: [
                        Text("are you sure u want to delte?"),
                        Text("cancel"),
                        Text("cancel"),
                        Text("cancel"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: Text("cancel")),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Getx Bottom sheet"),
                subtitle: Text("get bottom sheet using getx"),
                onTap: () {
                  Get.bottomSheet(Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text("LIGHT MODE"),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text("Dark MODE"),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  ));
                },
              ),
            ),
            TextButton(
                onPressed: () {
                  // Get.to(ScreenOne());
                  Get.toNamed(
                    "/screenone",
                  );
                },
                child: Text("move to screen one")),
            SizedBox(
              height: 5,
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed(
                    "/languagescreen",
                  );
                },
                child: Text("Language change screen")),
            SizedBox(
              height: 5,
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed(
                    "/countertimerscreen",
                  );
                },
                child: Text("Counter Timer Screen")),
            SizedBox(
              height: 5,
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed(
                    "/counterscreen",
                  );
                },
                child: Text("Counter Screen using getx")),
            SizedBox(
              height: 5,
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed(
                    "/sliderscreen",
                  );
                },
                child: Text("Slider using getx")),
            SizedBox(
              height: 5,
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed(
                    "/switchbutton",
                  );
                },
                child: Text("switchbutton using getx")),
            SizedBox(
              height: 5,
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed(
                    "/favouritescreen",
                  );
                },
                child: Text("favouritescreen like or unlike using getx")),
            SizedBox(
              height: 5,
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed(
                    "/imagepicker",
                  );
                },
                child: Text("imagepicker using getx")),
            SizedBox(
              height: 5,
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed(
                    "/loginscreen",
                  );
                },
                child: Text("loginscreen using getx")),
            SizedBox(
              height: 5,
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed(
                    "/testingapiscreen",
                  );
                },
                child: Text("testingapiscreen using getx")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.snackbar("Hello", "This is snackbar message",
            backgroundColor: Colors.amber, snackPosition: SnackPosition.BOTTOM);
      }),
    );
  }
}
