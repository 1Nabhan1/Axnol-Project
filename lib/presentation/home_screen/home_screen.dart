import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/presentation/home_screen/controller/Home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, required this.responseData_val});
  final Map<String, dynamic> responseData_val;
  @override
  final HomeController homeController = Get.put(HomeController());
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: Get.back,
          child: Icon(
            CupertinoIcons.back,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.orange,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(
              CupertinoIcons.ellipsis_vertical,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: homeController.pickImage,
              child: Obx(
                () =>  Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.orange,
                  ),
                  child: homeController.image.value != null
                      ? CircleAvatar(
                    radius: 65,
                    backgroundImage: FileImage(homeController.image.value!),
                  )
                      : Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Icon(
                      Icons.person_add_alt_1_rounded,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
              child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        Text(
                          responseData_val['user']['fname'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
              child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        Text(
                          responseData_val['user']['lname'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
              child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        Text(
                          responseData_val['user']['mobile'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
              child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        Text(
                          responseData_val['user']['email'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
              child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        Text(
                          '******',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
              child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        Text(
                          responseData_val['user']['address'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
              child: Container(
                  width: double.infinity,
                  height: 180,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18.0, vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          responseData_val['user']['detail'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)),
                    fixedSize: Size(200, 45)),
                onPressed: () {},
                child: Text(
                  'Update',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
