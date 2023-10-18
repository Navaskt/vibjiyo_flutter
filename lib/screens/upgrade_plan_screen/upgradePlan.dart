import 'package:flutter/material.dart';

import '../../constants/colorconstants.dart';


class UpgradePlan extends StatelessWidget {
  const UpgradePlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.appbarBgColor,
        title: const Text(
          'Purchase Plan',
          style: TextStyle(
            color: ColorConstant.appbarTitleColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            const Text("Please subscribe the plan and enjoy your dating",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                )),
            const SizedBox(
              height: 20,
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns in the grid
                  crossAxisSpacing: 6, // Spacing between columns
                  mainAxisSpacing: 6, // Spacing between rows
                  childAspectRatio: .72),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    //Get.to(DetailsPage(image[index],names[index],age[index]));
                  },
                  child: Card(
                    color: Colors.black.withOpacity(0.5),
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0xfff27121), Color(0xffe94040)],
                        )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 1,
                              height: 43,
                              color: Colors.black.withOpacity(0.4),
                              child: const Center(
                                child: Text("STARTER",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white)),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text("₹100",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white)),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                                width: 120,
                                height: 1.249874472618103,
                                decoration: const BoxDecoration(
                                    color: Color(0xffe8e6ea))),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Unlimited Message",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            const Text("Unlimited Profile View",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white)),
                            const SizedBox(
                              height: 7,
                            ),
                            const Text("Unlimited Friend Request",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white)),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 111,
                              height: 31,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white),
                              child: const Center(
                                child: Text("Select",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    )),
                              ),
                            )
                          ],
                        )),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
