// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'driving_courses/auto_manual.dart';
// import 'driving_courses/student_option.dart';
// import 'driving_license.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   static final String title = 'YANGON DRIVING SCHOOL';
//
//   @override
//   Widget build(BuildContext context) => MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: title,
//         theme: ThemeData(primarySwatch: Colors.deepOrange),
//         home: MainPage(title: title),
//
//
//       );
//
//
// }
//
// class MainPage extends StatefulWidget {
//   final String title;
//
//   const MainPage({
//     @required this.title,
//   });
//
//   @override
//   _MainPageState createState() => _MainPageState();
// }
//
// class _MainPageState extends State<MainPage> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//   TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Index 0: Home',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 1: Business',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 2: School',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 3: Settings',
//       style: optionStyle,
//     ),
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           elevation: 0,
//           backgroundColor: Colors.white,
//           title: Padding(
//             padding: const EdgeInsets.only(left: 25),
//             child: Row(
//               children: [
//                 Image.asset(
//                   'assets/logo.png',
//                   fit: BoxFit.contain,
//                   height: 40,
//                 ),
//                 Container(
//                     padding: const EdgeInsets.all(8.0), child: Text(widget.title,
//                   style: TextStyle(fontSize: 16,
//                       color: Colors.black,
//                       wordSpacing: 2, letterSpacing: 2),),)
//               ],
//             ),
//           ),
//         ),
//
//     drawer: Drawer(
//       elevation: 10.0,
//       child: ListView(
//         children: <Widget>[
//           DrawerHeader(
//             decoration: BoxDecoration(
//                 color: Colors.grey
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 CircleAvatar(
//                   backgroundImage: ExactAssetImage (
//                     'assets/logo.png',
//                   ),
//                   radius: 40.0,
//                 ),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Text('Yangon',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                           fontSize: 20
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Text('Driving School',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                           fontSize: 14.0
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//
//           //Here you place your menu items
//           ListTile(
//             leading: Icon(Icons.home),
//             title: Text('Home Page', style: TextStyle(fontSize: 18)),
//             onTap: () {
//               // Here you can give your route to navigate
//
//             },
//           ),
//           Divider(height: 3.0),
//           ListTile(
//             leading: Icon(Icons.settings),
//             title: Text('Settings', style: TextStyle(fontSize: 18)),
//             onTap: () {
//               // Here you can give your route to navigate
//
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.close),
//             title: Text('Close Drawer', style: TextStyle(fontSize: 18)),
//             onTap: () {
//               // Here you can give your route to navigate
//               Navigator.of(context).pop();
//             },
//           ),
//         ],
//       ),
//     ),
//
//
//
//         body: Column(
//           children: [
//
//             Container(
//               color: Colors.grey,
//               child: Padding(
//                 padding: const EdgeInsets.all(10),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Mg Mg',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                             fontSize: 25,
//                             letterSpacing: 1,
//                           ),
//                         ),
//                         SizedBox(height: 5),
//
//                         Text(
//                           'Point 10000',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                             fontSize: 13,
//                             letterSpacing: 1,
//                           ),
//                         ),
//                       ],
//                     ),
//
//                     Text(
//                       '1 Point = 1000 Kyats',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                         fontSize: 13,
//                         letterSpacing: 1,
//                       ),
//                     ),
//
//
//
//                     Column(
//                       children: [
//
//
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(15),
//
//                           child: CachedNetworkImage(
//                             width: 40,
//                             imageUrl: "https://play-lh.googleusercontent.com/I-Yd5tJnxw7Ks8FUhUiFr8I4kohd9phv5sRFHG_-nSX9AAD6Rcy570NBZVFJBKpepmc=w240-h480-rw",
//                           ),
//                         ),
//
//                         SizedBox(height: 5),
//
//                         Text(
//                           'Level - 1',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                             fontSize: 13,
//                             letterSpacing: 1,
//                           ),
//                         ),
//                       ],
//                     ),
//
//                   ],
//                 ),
//               ),
//             ),
//
//             SizedBox(
//               height: 20,
//             ),
//
//
//
//
//             Column(
//                 children: [
//                   Column(
//                     children: [
//                       Row(
//                         children: [
//                           Expanded(child: DrivingCourse()),
//                           Expanded(child: DrivingLicenseService(),),
//                           Expanded(child: CarLicenseService(),),
//                           Expanded(child: OtherServices(),),
//                         ],
//                       ),
//
//                       Row(
//                         children: [
//
//                           Expanded(child: AnswertheQuestion(),),
//                           Expanded(child:  SignBoard(),),
//                           Expanded(child: VideoLesson(),),
//                           Expanded(child: OrderHistory(),),
//
//                         ],
//                       ),
//
//
//                     ],
//                   ),
//
//                   SizedBox(
//                     height: 20,
//                   ),
//
//                   CarouselSlider(
//                     items: [
//                       CachedNetworkImage(
//                         imageUrl: "https://kzn.fra1.cdn.digitaloceanspaces.com/YDS/1.png",
//                         // "$baseUrl$itemUrl${controller.selectedItem.value.photo}/get",
//                       ),
//                       CachedNetworkImage(
//                         imageUrl: "https://kzn.fra1.cdn.digitaloceanspaces.com/YDS/2.png",
//                         // "$baseUrl$itemUrl${controller.selectedItem.value.photo}/get",
//                       ),
//                     ],
//                     options: CarouselOptions(
//                       initialPage: 0,
//                       enableInfiniteScroll: true,
//                       autoPlay: true,
//                       autoPlayInterval: Duration(seconds: 5),
//                       autoPlayAnimationDuration: Duration(milliseconds: 800),
//                       autoPlayCurve: Curves.ease,
//                     ),
//                   ),
//                 ],
//               ),
//           ],
//         ),
//
//     bottomNavigationBar: BottomNavigationBar(
//       backgroundColor: Colors.white,
//       type: BottomNavigationBarType.fixed,
//       currentIndex: _selectedIndex,
//       selectedItemColor: Colors.black,
//       selectedFontSize: 12,
//       onTap: _onItemTapped,
//       items: [
//         BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//         label: "ပင်မစာမျက်နှာ",
//         ),
//
//         BottomNavigationBarItem(
//             icon: Icon(Icons.airport_shuttle),
//             label: "အခြားဝန်ဆောင်မှု",
//             ),
//
//         BottomNavigationBarItem(
//             icon: Icon(Icons.message),
//             label: "မက်ဆေ့",
//             ),
//
//         BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: "ကျွန်ုပ်၏စာမျက်နှာ",
//             ),
//       ],
//     )
//       );
//
//
//   Widget DrivingCourse() =>
//             Column(
//               children: [
//         FlatButton(
//         onPressed: () {
//   Navigator.push(context,
//   MaterialPageRoute(builder: (context) => AutoManual()));
//   },
//             child: CircleAvatar(
//               radius: 23,
//               backgroundColor: Colors.grey,
//                 child: ClipOval(
//                   child: Image.asset('assets/l.png',
//                           height: 50, width: 50,),
//               ),
//             ),
//                 ),
//                 Text(
//                   'သင်တန်း\nအပ်ရန်',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     fontSize: 9,
//                     letterSpacing: 1,
//                   ),
//                 ),
//               ],
//       );
//   Widget DrivingLicenseService() =>
//         Column(
//           children: [
//             FlatButton(
//                 onPressed: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => AutoManual()));
//                 },
//                 child: CircleAvatar(
//                   radius: 23,
//                   backgroundColor: Colors.grey,
//                   child: ClipOval(
//                     child: Image.asset('assets/dl.png',
//                       height: 50, width: 50,),
//                   ),
//                 )),
//             SizedBox(
//               width: 16,
//             ),
//
//             Text(
//                 'ယာဉ်မောင်းလိုင်စင်\nဝန်ဆောင်မှု',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                   fontSize: 9,
//                   letterSpacing: 1,
//                 ),
//               ),
//           ],
//   );
//   Widget CarLicenseService() =>
//         Column(
//           children: [
//             FlatButton(
//                 onPressed: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => CLForm()));
//                 },
//                 child: CircleAvatar(
//                   radius: 23,
//                   backgroundColor: Colors.grey,
//                   child: ClipOval(
//                     child: Image.asset('assets/cl.png',
//                       height: 35, width: 35,),
//                   ),
//                 )),
//             SizedBox(
//               width: 16,
//             ),
//
//             Text(
//               'ကားလိုင်စင်\nဝန်ဆောင်မှု',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//                 fontSize: 9,
//                 letterSpacing: 1,
//               ),
//             ),
//           ],
//   );
//
//
//   Widget OtherServices() =>
//       Column(
//         children: [
//           FlatButton(
//               onPressed: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => WelcomeScreen()));
//               },
//               child: CircleAvatar(
//                 radius: 23,
//                 backgroundColor: Colors.grey,
//                 child: ClipOval(
//                   child: Image.asset('assets/o.png',
//                     height: 40, width: 40,),
//                 ),
//               )),
//           SizedBox(
//             width: 20,
//           ),
//
//           Text(
//             'အခြား\nဝန်ဆောင်မှုများ',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//               fontSize: 9,
//               letterSpacing: 1,
//             ),
//           ),
//         ],
//       );
//
//   Widget AnswertheQuestion() =>
//       Column(
//         children: [
//           FlatButton(
//               onPressed: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => WelcomeScreen()));
//               },
//               child: CircleAvatar(
//                 radius: 23,
//                 backgroundColor: Colors.grey,
//                 child: ClipOval(
//                   child: Image.asset('assets/qa.png',
//                     height: 35, width: 35,),
//                 ),
//               )),
//           SizedBox(
//             width: 20,
//           ),
//
//           Text(
//             'မေးခွန်း\n(၅)စုံ',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//               fontSize: 9,
//               letterSpacing: 1,
//             ),
//           ),
//         ],
//       );
//
//   Widget SignBoard() =>
//       Column(
//         children: [
//           FlatButton(
//               onPressed: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => WelcomeScreen()));
//               },
//               child: CircleAvatar(
//                 radius: 23,
//                 backgroundColor: Colors.grey,
//                 child: ClipOval(
//                   child: Image.asset('assets/sb.png',
//                     height: 50, width: 50,),
//                 ),
//               )),
//           SizedBox(
//             width: 20,
//           ),
//
//           Text(
//             'လမ်းညွှန်\nအမှတ်အသားများ',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//               fontSize: 9,
//               letterSpacing: 1,
//             ),
//           ),
//         ],
//       );
//
//
//   Widget VideoLesson() =>
//         Column(
//           children: [
//             FlatButton(
//                 onPressed: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => WelcomeScreen()));
//                 },
//                 child: CircleAvatar(
//                   radius: 23,
//                   backgroundColor: Colors.grey,
//                   child: ClipOval(
//                     child: Image.asset('assets/vl.png',
//                       height: 50, width: 50,),
//                   ),
//                 )),
//             SizedBox(
//               width: 20,
//             ),
//
//             Text(
//               'ဗီဒီယို\nသင်ခန်းစာများ',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//                 fontSize: 9,
//                 letterSpacing: 1,
//               ),
//             ),
//           ],
//   );
//
//   Widget OrderHistory() =>
//       Column(
//         children: [
//           FlatButton(
//               onPressed: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => WelcomeScreen()));
//               },
//               child: CircleAvatar(
//                 radius: 23,
//                 backgroundColor: Colors.grey,
//                 child: ClipOval(
//                   child: Image.asset('assets/r.png',
//                   height: 50, width: 50,),
//                 ),
//               )),
//           SizedBox(
//             width: 20,
//           ),
//
//           Text(
//             'လုပ်ဆောင်မှု\nမှတ်တမ်း',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//               fontSize: 9,
//               letterSpacing: 1,
//             ),
//           ),
//         ],
//       );
//
// }
//
//
//
