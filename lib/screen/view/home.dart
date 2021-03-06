import 'package:colours/colours.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hammies_user/widgets/home_reward.dart';
import '../../controller/home_controller.dart';
import '../../data/constant.dart';
import '../../routes/routes.dart';
import '../../ui/driving_courses/booking.dart';
import '../../ui/q&a/tab_bar.dart';
import '../../utils/widget/widget.dart';
import '../../widgets/home_category.dart';
import '../../widgets/home_items.dart';
import '../../widgets/home_pickup.dart';
import 'hot.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController _homeController = Get.find();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [

                Container(
                  color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.coins,
                                  color: Colours.yellow,
                                  size: 20,
                                ),
                                SizedBox(width: 15),

                                Text(
                                  "${_homeController.currentUser.value?.points}""  Points",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 16,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 8),

                            Text(
                              '1 Point = 1,000 Kyats',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 15,
                                letterSpacing: 1,
                              ),
                            ),






                          ],
                        ),

                        Text(
                          'Level - 1',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16,
                            letterSpacing: 1,
                          ),
                        ),

                        Column(
                          children: [


                            InkWell(
                              onTap: () {
                                if (controller.currentUser.value == null) {
                                  controller.signInWithGoogle(userProfileUrl);
                                } else {
                                  Get.toNamed(userProfileUrl);
                                }
                              },
                              child: Obx(() {
                                return circularNetworkImage(
                                  controller.currentUser.value?.image ?? userImage,
                                  20,
                                );
                              }),
                            ),

                            SizedBox(height: 5),

                            Text(
                              _homeController.currentUser.value?.userName.toUpperCase() ?? "",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 15,
                                letterSpacing: 1,
                              ),
                            ),


                          ],
                        ),

                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),




                Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => Booking()));

                                  },
                                  child: Image.asset(
                                    'assets/dc.png',
                                    width: 55.0,
                                    height: 55.0,
                                    fit: BoxFit.cover,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.grey,

                                    shape: CircleBorder(), //<-- SEE HERE
                                  ),
                                ),

                                Text('????????????????????? \n??????????????????',
                                  textAlign: TextAlign.center,
                                ),

                              ],
                            ),
                            Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => HotView()));
                                  },
                                  child: Image.asset(
                                    'assets/dl.png',
                                    width: 55.0,
                                    height: 55.0,
                                    fit: BoxFit.cover,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.grey,

                                    shape: CircleBorder(), //<-- SEE HERE
                                  ),
                                ),

                                Text('??????????????????????????????????????????????????????\n?????????????????????????????????',
                                  textAlign: TextAlign.center,
                                ),

                              ],
                            ),
                            Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Image.asset(
                                    'assets/cl.png',
                                    width: 55.0,
                                    height: 55.0,
                                    fit: BoxFit.cover,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.grey,

                                    shape: CircleBorder(), //<-- SEE HERE
                                  ),
                                ),

                                Text('?????????????????????????????????\n?????????????????????????????????',
                                  textAlign: TextAlign.center,
                                ),

                              ],
                            ),
                            Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Image.asset(
                                    'assets/o.png',
                                    width: 55.0,
                                    height: 55.0,
                                    fit: BoxFit.cover,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.grey,

                                    shape: CircleBorder(), //<-- SEE HERE
                                  ),
                                ),

                                Text('???????????????\n?????????????????????????????????????????????',
                                  textAlign: TextAlign.center,
                                ),

                              ],
                            ),
                          ],
                        ),

                        Row(
                          children: [

                            Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => QuestionTab()));
                                  },
                                  child: Image.asset(
                                    'assets/qa.png',
                                    width: 55.0,
                                    height: 55.0,
                                    fit: BoxFit.cover,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.grey,

                                    shape: CircleBorder(), //<-- SEE HERE
                                  ),
                                ),

                                Text('????????????????????????\n(???)?????????',
                                  textAlign: TextAlign.center,
                                ),

                              ],
                            ),

                            Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Image.asset(
                                    'assets/sb.png',
                                    width: 80.0,
                                    height: 55.0,
                                    fit: BoxFit.cover,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.grey,

                                    shape: CircleBorder(), //<-- SEE HERE
                                  ),
                                ),

                                Text('???????????????????????????\n???????????????????????????????????????',
                                  textAlign: TextAlign.center,
                                ),

                              ],
                            ),
                            Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Image.asset(
                                    'assets/vl.png',
                                    width: 55.0,
                                    height: 55.0,
                                    fit: BoxFit.cover,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.grey,

                                    shape: CircleBorder(), //<-- SEE HERE
                                  ),
                                ),

                                Text('?????????????????????\n???????????????????????????????????????',
                                  textAlign: TextAlign.center,
                                ),

                              ],
                            ),
                            Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Image.asset(
                                    'assets/r.png',
                                    width: 55.0,
                                    height: 55.0,
                                    fit: BoxFit.cover,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.grey,

                                    shape: CircleBorder(), //<-- SEE HERE
                                  ),
                                ),

                                Text('????????????????????????????????????\n????????????????????????',
                                  textAlign: TextAlign.center,
                                ),

                              ],
                            ),
                          ],
                        ),

                      ],
                    ),

                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),
            HomePickUp(),
            HomeReward(),
            const SizedBox(
              height: 10,
            ),
            HomeCategory(),
            HomeItems(),
          ],
        ),
      ),
    );


  }

}

