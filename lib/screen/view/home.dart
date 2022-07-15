import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hammies_user/widgets/home_reward.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../controller/home_controller.dart';
import '../../data/constant.dart';
import '../../routes/routes.dart';
import '../../ui/q&a/tab_bar.dart';
import '../../utils/widget/widget.dart';
import '../../widgets/home_category.dart';
import '../../widgets/home_items.dart';
import '../../widgets/home_pickup.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
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



                            Text(
                              'Su Su',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 25,
                                letterSpacing: 1,
                              ),
                            ),
                            SizedBox(height: 5),

                            Text(
                              'Point 10000',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 13,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),

                        Text(
                          '1 Point = 1000 Kyats',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 13,
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
                              'Level - 1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 13,
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
                                  onPressed: () {},
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

                                Text('သင်တန်း \nအပ်ရန်',
                                  textAlign: TextAlign.center,
                                ),

                              ],
                            ),
                            Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
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

                                Text('ယာဉ်မောင်းလိုင်စင်\nဝန်ဆောင်မှု',
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

                                Text('ကားလိုင်စင်\nဝန်ဆောင်မှု',
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

                                Text('အခြား\nဝန်ဆောင်မှုများ',
                                  textAlign: TextAlign.center,
                                ),

                              ],
                            ),


                            // Expanded(child: DrivingLicenseService(),),
                            // Expanded(child: CarLicenseService(),),
                            // Expanded(child: OtherServices(),),
                          ],
                        ),

                        Row(
                          children: [

                            Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
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

                                Text('မေးခွန်း\n(၅)စုံ',
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

                                Text('လမ်းညွှန်\nအမှတ်အသားများ',
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

                                Text('ဗီဒီယို\nသင်ခန်းစာများ',
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

                                Text('လုပ်ဆောင်မှု\nမှတ်တမ်း',
                                  textAlign: TextAlign.center,
                                ),

                              ],
                            ),


                            // Expanded(child: DrivingLicenseService(),),
                            // Expanded(child: CarLicenseService(),),
                            // Expanded(child: OtherServices(),),
                          ],
                        ),

                      ],
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    CarouselSlider(
                      items: [
                        CachedNetworkImage(
                          imageUrl: "https://kzn.fra1.cdn.digitaloceanspaces.com/YDS/1.png",
                          // "$baseUrl$itemUrl${controller.selectedItem.value.photo}/get",
                        ),
                        CachedNetworkImage(
                          imageUrl: "https://kzn.fra1.cdn.digitaloceanspaces.com/YDS/2.png",
                          // "$baseUrl$itemUrl${controller.selectedItem.value.photo}/get",
                        ),
                      ],
                      options: CarouselOptions(
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 5),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.ease,
                      ),
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

