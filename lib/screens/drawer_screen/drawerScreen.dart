import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/image_constants.dart';
import '../notification_screen/notificationPage.dart';
import '../profile_screen/profilePage.dart';
import '../upgrade_plan_screen/upgradePlan.dart';


class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.85,
        child: Drawer(
          backgroundColor: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .4,
                width: MediaQuery.of(context).size.width * 1,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: drawerBackground,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, top: 100),
                      child: Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                          ),
                          color: Colors.transparent,
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://www.kerala9.com/wp-content/gallery/nayantara/nayanthara-beautiful-images-003.jpeg'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          leading: const SizedBox(
                              width: 25,
                              child: Center(
                                  child: Icon(
                                Icons.person,
                                color: Colors.black,
                              ))),
                          title: const Text("My Profile",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              )),
                          onTap: () => {
                            Get.to(ProfilePage()),
                          },
                        ),
                        Container(
                            width: 250,
                            height: 2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: const Color(0xffd9d9d9))),
                        ListTile(
                          leading: const SizedBox(
                              width: 25,
                              child: Center(
                                  child: Icon(
                                Icons.next_plan,
                                color: Colors.black,
                              ))),
                          title: const Text("Upgrade Plan",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              )),
                          onTap: () => {
                            Get.to(const UpgradePlan()),
                          },
                        ),
                        Container(
                            width: 250,
                            height: 2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: const Color(0xffd9d9d9))),
                        ListTile(
                          leading: const SizedBox(
                              width: 25,
                              child: Center(
                                  child: Icon(
                                Icons.notifications,
                                color: Colors.black,
                              ))),
                          title: const Text("Notifications",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              )),
                          onTap: () => {
                            Get.to(const NotificationPage()),
                          },
                        ),
                        Container(
                            width: 250,
                            height: 2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: const Color(0xffd9d9d9))),
                        ListTile(
                          leading: const SizedBox(
                              width: 25,
                              child: Center(
                                  child: Icon(
                                Icons.privacy_tip,
                                color: Colors.black,
                              ))),
                          title: const Text("Privacy T&C",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              )),
                          onTap: () => {},
                        ),
                        Container(
                            width: 250,
                            height: 2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: const Color(0xffd9d9d9))),
                        ListTile(
                          leading: const SizedBox(
                              width: 25,
                              child: Center(
                                  child: Icon(
                                Icons.privacy_tip_outlined,
                                color: Colors.black,
                              ))),
                          title: const Text("About",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              )),
                          onTap: () => {},
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          leading: SizedBox(
                              width: 25,
                              child: Center(
                                  child: Icon(
                                Icons.logout,
                                color: Colors.grey.shade700,
                                size: 35,
                              ))),
                          title: const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text("Logout",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                          onTap: () => {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
