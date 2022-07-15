import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hammies_user/utils/widget/widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controller/home_controller.dart';
import '../data/constant.dart';
import '../routes/routes.dart';
import '../ui/q&a/tab_bar.dart';
import '../widgets/bottom_nav.dart';
import 'view/brand.dart';
import 'view/cart.dart';
import 'view/favourite.dart';
import 'view/home.dart';
import 'view/hot.dart';
import 'view/order_history.dart';

List<Widget> _template = [

  HomeView(),
  // BrandView(),
  HotView(),
  CartView(),
  FavouriteView(),
  OrderHistory(),
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  FlutterLocalNotificationsPlugin? fltNotification;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notitficationPermission();
    initMessaging();
  }

  void notitficationPermission() async {
    await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
  }

  void initMessaging() async {
    var androiInit = AndroidInitializationSettings('@mipmap/ic_launcher');

    var iosInit = IOSInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    var initSetting = InitializationSettings(android: androiInit, iOS: iosInit);

    fltNotification = FlutterLocalNotificationsPlugin();

    fltNotification!.initialize(initSetting);

    if (messaging != null) {
      print('vvvvvvv');
    }

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      showNotification(message);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((event) {});
  }

  void showNotification(RemoteMessage message) async {
    var androidDetails = AndroidNotificationDetails(
      '1',
      message.notification!.title ?? '',
      icon: '@mipmap/ic_launcher',
      color: Color(0xFF0f90f3),
    );
    var iosDetails = IOSNotificationDetails();
    var generalNotificationDetails =
        NotificationDetails(android: androidDetails, iOS: iosDetails);
    await fltNotification!.show(0, message.notification!.title ?? '',
        message.notification!.body ?? '', generalNotificationDetails,
        payload: 'Notification');
  }

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: appBarColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              fit: BoxFit.contain,
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: Text("YANGON DRIVING SCHOOL",

                style: TextStyle(
                  color: Colors.black,
                    fontSize: 16,
                    wordSpacing: 2,
                    letterSpacing: 2),
              ),
            ),
          ],
        ),
        // centerTitle: true,
        actions: [

          // SizedBox(
          //   width: 40,
          //   child: ElevatedButton(
          //     style: ButtonStyle(
          //       alignment: Alignment.center,
          //       backgroundColor: MaterialStateProperty.all(Colors.white),
          //       elevation: MaterialStateProperty.resolveWith<double>(
          //         // As you said you dont need elevation. I'm returning 0 in both case
          //         (Set<MaterialState> states) {
          //           if (states.contains(MaterialState.disabled)) {
          //             return 0;
          //           }
          //           return 0; // Defer to the widget's default.
          //         },
          //       ),
          //     ),
          //     onPressed: () => Get.toNamed(searchScreen),
          //     child: FaIcon(
          //       FontAwesomeIcons.search,
          //       color: Colors.black,
          //       size: 22,
          //     ),
          //   ),
          // ),

          ElevatedButton(
            style: ButtonStyle(
              alignment: Alignment.center,
              backgroundColor: MaterialStateProperty.all(Colors.white),
              elevation: MaterialStateProperty.resolveWith<double>(
                // As you said you dont need elevation. I'm returning 0 in both case
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) {
                    return 0;
                  }
                  return 0; // Defer to the widget's default.
                },
              ),
            ),
            onPressed: () async {
              try {
                await launch('https://m.me/Yangondrivingschool');
              } catch (e) {
                print(e);
              }
            },
            child: FaIcon(
              FontAwesomeIcons.facebookMessenger,
              color: Colors.blue,
              size: 25,
            ),
          ),
          //User Profile

        ],
      ),
      body: Obx(
        () => _template[controller.navIndex.value],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
