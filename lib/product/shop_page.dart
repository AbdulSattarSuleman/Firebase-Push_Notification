import 'package:ecommerce_app_ui/product/product_page.dart';
import 'package:ecommerce_app_ui/utils/color_manager.dart';
import 'package:flutter/material.dart';

import '../utils/image_manager.dart';
import '../utils/text_style_manager.dart';

class Shoppage extends StatefulWidget {
  const Shoppage({super.key});

  @override
  State<Shoppage> createState() => _ShoppageState();
}

class _ShoppageState extends State<Shoppage> {
  // NotificationServices notificationServices = NotificationServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Method Call for Request Permission
    // notificationServices.requestNotificationPermission();

    // // Call Method FirebaseInit
    // notificationServices.firebaseInit(context);

    // // Call Method
    // notificationServices.setupInteractMessage(context);
    // // Call Method for Refresh Token
    // notificationServices.isTokenRefresh();
    // // Call Method for get Device Token
    // notificationServices.getDeviceToken().then((value) {
    //   print("Device Token");
    //   print(value);
    // });
  }

  @override
  Widget build(BuildContext context) {
    double cardBorderRadius = 10.0;
    final screenSize = MediaQuery.of(context).size;
    var scaffoldKey = GlobalKey<ScaffoldState>();
    const ColorFilter greyscaleImage = ColorFilter.matrix(<double>[
      0.2126,
      0.7152,
      0.0722,
      0,
      0,
      0.2126,
      0.7152,
      0.0722,
      0,
      0,
      0.2126,
      0.7152,
      0.0722,
      0,
      0,
      0,
      0,
      0,
      1,
      0,
    ]);
    const dividerWidth = 0.3;
    return Scaffold(
      backgroundColor: Colors.white,
      key: scaffoldKey,
      drawer: const Drawer(
        child: Text(""),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                // App bar Title
                SizedBox(
                  height: 250,
                  child: AppBar(
                    leading: IconButton(
                        onPressed: () {
                          scaffoldKey.currentState?.openDrawer();
                        },
                        icon: const Icon(Icons.menu_open_outlined)),
                    title: const Text("MENS SHOES"),
                    actions: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.mark_email_unread))
                    ],
                  ),
                ),
                // UNO Divier Row
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 100, 20, 20),
                  child: SizedBox(
                    width: screenSize.width,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("UNO", style: TextStyleManager.darkHeadWhite),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 10, right: 10),
                            height: 1.2,
                            width: screenSize.width,
                            color: Colors.white,
                            // margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text("VIEW ALL >",
                                style: TextStyleManager.darkTextWhiteButton))
                      ],
                    ),
                  ),
                ),
                // App bar card
                Padding(
                  padding: const EdgeInsets.only(top: 160),
                  child: SizedBox(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const SizedBox(
                          width: 25,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => ProductPage(
                                        productTitle: "RAZR",
                                        productImage: ImageManager.image1)));
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(cardBorderRadius)),
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
                                    width: 100,
                                    height: 100,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text("RAZR",
                                      style: TextStyleManager.productTitle),
                                  Text("IDR 439.600",
                                      style: TextStyleManager.priceStyle),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => ProductPage(
                                        productTitle: "RAZR",
                                        productImage: ImageManager.image1)));
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(cardBorderRadius)),
                            // color: ColorUtils.secondaryColor,
                            // elevation: 5.0,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage(ImageManager.image2),
                                    width: 100,
                                    height: 100,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text("LITE BOOST II",
                                      style: TextStyleManager.productTitle),
                                  Text("IDR 399.009",
                                      style: TextStyleManager.priceStyle),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => ProductPage(
                                        productTitle: "RAZR",
                                        productImage: ImageManager.image1)));
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(cardBorderRadius)),
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
                                    width: 100,
                                    height: 100,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text("OUTER II",
                                      style: TextStyleManager.productTitle),
                                  Text("IDR 439.600",
                                      style: TextStyleManager.priceStyle),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => ProductPage(
                                        productTitle: "RAZR",
                                        productImage: ImageManager.image1)));
                          },
                          child: Card(
                            elevation: 2, // Change this
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(cardBorderRadius)),
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
                                    width: 100,
                                    height: 100,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text("RAZR",
                                      style: TextStyleManager.productTitle),
                                  Text("IDR 439.600",
                                      style: TextStyleManager.priceStyle),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // Premium Product Divider Row
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 20, 10),
              child: SizedBox(
                width: screenSize.width,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("PREMIUM", style: TextStyleManager.darkHead),
                    Expanded(
                      child: Container(
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          height: 1.2,
                          width: screenSize.width,
                          color: ColorManager.primaryColor
                          // margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                          ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text("VIEW ALL >",
                            style: TextStyleManager.darkTextButton))
                  ],
                ),
              ),
            ),
            // Premium Product card
            SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ProductPage(
                                  productTitle: "RAZR",
                                  productImage: ImageManager.image1)));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(cardBorderRadius)),
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
                              width: 100,
                              height: 100,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("RAZR", style: TextStyleManager.productTitle),
                            Text("IDR 439.600",
                                style: TextStyleManager.priceStyle),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ProductPage(
                                  productTitle: "RAZR",
                                  productImage: ImageManager.image1)));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(cardBorderRadius)),
                      // color: ColorUtils.secondaryColor,
                      // elevation: 5.0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(ImageManager.image2),
                              width: 100,
                              height: 100,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("LITE BOOST II",
                                style: TextStyleManager.productTitle),
                            Text("IDR 399.009",
                                style: TextStyleManager.priceStyle),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ProductPage(
                                  productTitle: "RAZR",
                                  productImage: ImageManager.image1)));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(cardBorderRadius)),
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
                              width: 100,
                              height: 100,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("OUTER II",
                                style: TextStyleManager.productTitle),
                            Text("IDR 439.600",
                                style: TextStyleManager.priceStyle),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ProductPage(
                                  productTitle: "RAZR",
                                  productImage: ImageManager.image1)));
                    },
                    child: Card(
                      elevation: 2, // Change this
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(cardBorderRadius)),
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
                              width: 100,
                              height: 100,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("RAZR", style: TextStyleManager.productTitle),
                            Text("IDR 439.600",
                                style: TextStyleManager.priceStyle),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                ],
              ),
            ),

            //  star wars Divider Row
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 20, 10),
              child: SizedBox(
                width: screenSize.width,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("STAR WARS", style: TextStyleManager.darkHead),
                    Expanded(
                      child: Container(
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          height: 1.2,
                          width: screenSize.width,
                          color: ColorManager.primaryColor
                          // margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                          ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text("VIEW ALL >",
                            style: TextStyleManager.darkTextButton))
                  ],
                ),
              ),
            ),
            // Grey Scale Product card
            SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ProductPage(
                                  productTitle: "RAZR",
                                  productImage: ImageManager.image1)));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(cardBorderRadius)),
                      // color: ColorUtils.secondaryColor,
                      // elevation: 5.0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ColorFiltered(
                              colorFilter: greyscaleImage,
                              child: Image(
                                image: AssetImage(ImageManager.image1),
                                width: 100,
                                height: 100,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("RAZR", style: TextStyleManager.productTitle),
                            Text("IDR 439.600",
                                style: TextStyleManager.priceStyle),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ProductPage(
                                  productTitle: "RAZR",
                                  productImage: ImageManager.image1)));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(cardBorderRadius)),
                      // color: ColorUtils.secondaryColor,
                      // elevation: 5.0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ColorFiltered(
                              colorFilter: greyscaleImage,
                              child: Image(
                                image: AssetImage(ImageManager.image2),
                                width: 100,
                                height: 100,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("LITE BOOST II",
                                style: TextStyleManager.productTitle),
                            Text("IDR 399.009",
                                style: TextStyleManager.priceStyle),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ProductPage(
                                  productTitle: "RAZR",
                                  productImage: ImageManager.image1)));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(cardBorderRadius)),
                      // color: ColorUtils.secondaryColor,
                      // elevation: 5.0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          // mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ColorFiltered(
                              colorFilter: greyscaleImage,
                              child: Image(
                                image: AssetImage(ImageManager.image4),
                                width: 100,
                                height: 100,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("OUTER II",
                                style: TextStyleManager.productTitle),
                            Text("IDR 439.600",
                                style: TextStyleManager.priceStyle),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ProductPage(
                                  productTitle: "RAZR",
                                  productImage: ImageManager.image1)));
                    },
                    child: Card(
                      elevation: 2, // Change this
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(cardBorderRadius)),
                      // color: ColorUtils.secondaryColor,
                      // elevation: 5.0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ColorFiltered(
                              colorFilter: greyscaleImage,
                              child: Image(
                                image: AssetImage(ImageManager.image3),
                                width: 100,
                                height: 100,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("RAZR", style: TextStyleManager.productTitle),
                            Text("IDR 439.600",
                                style: TextStyleManager.priceStyle),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                ],
              ),
            ),

            // Bottom Space
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
