import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/heroicons.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:project_ecommerce/helper/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:project_ecommerce/controllers/profile_controller.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/pages/voucher_page.dart';
import 'package:project_ecommerce/routes/route_name.dart';
import 'package:project_ecommerce/widgets/widget.dart';
import '../widgets/navbar.dart';
import 'home_page.dart';
import 'order_page.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);
  final ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            myHeaderPage("Profile"),
            Padding(padding: EdgeInsets.only(top: 30)),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(imageUser),
            ),
            SizedBox(height: 20),
            Obx(() => Text(
                  'Hello, ${profileController.userProfile.value.username}!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            SizedBox(height: 10),
            Container(
              width: 365,
              height: 38,
              decoration: ShapeDecoration(
                color: Color(0xFFE3EBFE),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(Icons.person, color: primaryColor),
                    SizedBox(width: 10),
                    Obx(() => Text(
                          ' ${profileController.userProfile.value.username}',
                          style: TextStyle(fontSize: 16),
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 365,
              height: 38,
              decoration: ShapeDecoration(
                color: Color(0xFFE3EBFE),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(Icons.email, color: primaryColor),
                    SizedBox(width: 10),
                    Obx(() => Text(
                          ' ${profileController.userProfile.value.password}',
                          style: TextStyle(fontSize: 16),
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor, // Set button color
              ),
              onPressed: () {
                profileController.logout();
              },
              child: Text("Log Out"),
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}