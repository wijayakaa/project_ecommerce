import 'package:flutter/material.dart';
import 'package:project_ecommerce/helper/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:project_ecommerce/controllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/pages/profile_page.dart';
import 'package:project_ecommerce/widgets/widget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ElevatedButton(onPressed:() {
              Get.to(ProfilePage());
            }, child: Text("Profile"))
          ],
        ),
      ),
    );
  }
}
