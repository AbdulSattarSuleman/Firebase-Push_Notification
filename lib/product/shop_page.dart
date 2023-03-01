import 'package:ecommerce_app_ui/services/notification-services.dart';
import 'package:ecommerce_app_ui/utils/color_manager.dart';
import 'package:ecommerce_app_ui/utils/image_manager.dart';
import 'package:flutter/material.dart';

class Shoppage extends StatefulWidget {
  const Shoppage({super.key});

  @override
  State<Shoppage> createState() => _ShoppageState();
}

class _ShoppageState extends State<Shoppage> {
  NotificationServices notificationServices = NotificationServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Method Call for Request Permission
    notificationServices.requestNotificationPermission();

    // Call Method FirebaseInit
    notificationServices.firebaseInit(context);

    // Call Method
    notificationServices.setupInteractMessage(context);
    // Call Method for Refresh Token
    notificationServices.isTokenRefresh();
    // Call Method for get Device Token
    notificationServices.getDeviceToken().then((value) {
      print("Device Token");
      print(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(150.0),
      //   child: AppBar(
      //       title: const Text(
      //     'MEN SHOES',
      //   )),
      // ),
      // appBar: AppBar(
      //   toolbarHeight: 120,
      //   flexibleSpace: Container(
      //     margin: EdgeInsets.zero,
      //     color: ColorManager.primaryColor,
      //     child: Center(
      //       child: Stack(
      //         alignment: Alignment.center,
      //         children: [
      //           Row(
      //             mainAxisSize: MainAxisSize.max,
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               const Text('UNO'),
      //               const Text("--------------------------"),
      //               TextButton(
      //                   onPressed: () {}, child: const Text("VIEW ALL >"))
      //             ],
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      //   title: const Text('MEN SHOES'),
      //   actions: [
      //     IconButton(
      //         onPressed: () {},
      //         icon: const Icon(Icons.mark_email_unread_outlined))
      //   ],
      // ),

      appBar: AppBar(
        toolbarHeight: 120,
        centerTitle: true,
        title: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'MEN SHOES',
                ),
              ],
            ),

            const Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.mark_email_unread_outlined,
              ),
            ),

            // Positioned(
            //   top: 0,
            //   child: Row(
            //     // mainAxisSize: MainAxisSize.max,
            //     // mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       const Text('UNO'),
            //       const Text("--------------------------"),
            //       TextButton(onPressed: () {}, child: const Text("VIEW ALL >"))
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
      drawer: const Drawer(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  Card(
                    // color: ColorUtils.secondaryColor,
                    // elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage(ImageManager.image1),
                              width: 100),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("RAZR"),
                          const Text("CR 439600"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Card(
                    // color: ColorUtils.secondaryColor,
                    // elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage(ImageManager.image2),
                              width: 100),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("LITE BOOST II"),
                          const Text("CR 399009"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Card(
                    // color: ColorUtils.secondaryColor,
                    // elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        // mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage(ImageManager.image4),
                              width: 100),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("OUTER II"),
                          const Text("CR 439600"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Card(
                    // color: ColorUtils.secondaryColor,
                    // elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage(ImageManager.image3),
                              width: 100),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("RAZR"),
                          const Text("CR 439600"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Second Slider
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("PREMIUM"),
                  Container(
                    height: 1.2,
                    width: 150,
                    color: ColorManager.primaryColor,
                    // margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  ),
                  // const Divider(
                  //   color: Colors.redAccent, //color of divider
                  //   height: 5, //height spacing of divider
                  //   thickness: 3, //thickness of divier line
                  //   indent: 25, //spacing at the start of divider
                  //   // endIndent: 25, //spacing at the end of divider
                  // ),
                  TextButton(onPressed: () {}, child: const Text("VIEW ALL >"))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  Card(
                    // color: ColorUtils.secondaryColor,
                    // elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage(ImageManager.image1),
                              width: 100),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("RAZR"),
                          const Text("CR 439600"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Card(
                    // color: ColorUtils.secondaryColor,
                    // elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage(ImageManager.image2),
                              width: 100),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("LITE BOOST II"),
                          const Text("CR 399009"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Card(
                    // color: ColorUtils.secondaryColor,
                    // elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        // mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage(ImageManager.image4),
                              width: 100),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("OUTER II"),
                          const Text("CR 439600"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Card(
                    // color: ColorUtils.secondaryColor,
                    // elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage(ImageManager.image3),
                              width: 100),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("RAZR"),
                          const Text("CR 439600"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("PREMIUM"),
                  Container(
                    height: 1.2,
                    width: 150,
                    color: ColorManager.primaryColor,
                    // margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  ),
                  TextButton(onPressed: () {}, child: const Text("VIEW ALL >"))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  Card(
                    // color: ColorUtils.secondaryColor,
                    // elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage(ImageManager.image1),
                              width: 100),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("RAZR"),
                          const Text("CR 439600"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Card(
                    // color: ColorUtils.secondaryColor,
                    // elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage(ImageManager.image2),
                              width: 100),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("LITE BOOST II"),
                          const Text("CR 399009"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Card(
                    // color: ColorUtils.secondaryColor,
                    // elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        // mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage(ImageManager.image4),
                              width: 100),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("OUTER II"),
                          const Text("CR 439600"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Card(
                    // color: ColorUtils.secondaryColor,
                    // elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage(ImageManager.image3),
                              width: 100),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("RAZR"),
                          const Text("CR 439600"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
