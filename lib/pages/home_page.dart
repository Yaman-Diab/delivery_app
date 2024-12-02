import 'package:delivary_app/component/custom_bottom_nav_bar.dart';
import 'package:delivary_app/component/custom_button.dart';
import 'package:delivary_app/component/food_card.dart';
import 'package:delivary_app/core/const/app_images.dart';
import 'package:delivary_app/core/const/app_text_style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBE5DD),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            backgroundImage: AssetImage(AppImages.userPic),
                            radius: 40,
                          ),
                          SizedBox(
                              width: 16.0), // Space between avatar and text
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                "Hello, Yaman",
                                style: AppTextStyle.f16BlackBold,
                              ),
                              Text(
                                "Damascus, Syria",
                                style: AppTextStyle.f12GreyNormal,
                              ),
                            ],
                          ),
                        ],
                      ),
                      CustomButton(
                        iconSize: 35,
                        iconColor: Colors.black87,
                        height: 80,
                        width: 80,
                        color: Colors.white,
                        icon: Icons.notifications,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.black54),
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.black54),
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    ),
                  ),
                  width: double.infinity,
                  height: 50,
                ),
                SizedBox(
                  height: 8,
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 35),
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(169, 65, 29, 1),
                          Color.fromRGBO(169, 65, 29, 0.7),
                        ]),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                "Special Offer\nfor March",
                                style: AppTextStyle.f16WhiteW800,
                              ),
                              Text(
                                "we are here with the best\nfood in town",
                                style: AppTextStyle.f12WhiteNormal,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      AppImages.hamburger,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 35,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              child: Image.asset(
                                "images/hamburger.jpeg",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              "Hamburger",
                              style: AppTextStyle.f14BlackBold,
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.orange),
                          color: Colors.white,
                        ),
                        width: 180,
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 15,
                      );
                    },
                    itemCount: 5,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 275,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return FoodCard();
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 15,
                      );
                    },
                    itemCount: 5,
                  ),
                ),
              ],
            ),
          ),
          CustomBottomNavBar(
            selectedIndex: 0,
            onItemSelected: (int value) {},
          ),
        ],
      ),
    );
  }
}
