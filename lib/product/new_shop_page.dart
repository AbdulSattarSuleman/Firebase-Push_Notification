// child: Column(
//           children: [
//             const SizedBox(
//               height: 10,
//             ),
//             SizedBox(
//               height: 180,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: [
//                   const SizedBox(
//                     width: 25,
//                   ),
//                   InkWell(
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (_) => ProductPage(
//                                   productTitle: "RAZR",
//                                   productImage: ImageManager.image3)));
//                     },
//                     child: Card(
//                       shape: RoundedRectangleBorder(
//                           borderRadius:
//                               BorderRadius.circular(cardBorderRadius)),
//                       // color: ColorUtils.secondaryColor,
//                       // elevation: 5.0,
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           mainAxisSize: MainAxisSize.max,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Image(
//                               image: AssetImage(ImageManager.image1),
//                               width: 100,
//                               height: 100,
//                             ),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                             Text(
//                               "RAZR",
//                               style: TextStyleManager.productTitle,
//                             ),
//                             Text(
//                               "IDR 439.600",
//                               style: TextStyleManager.priceStyle,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 5,
//                   ),
//                   Card(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(cardBorderRadius)),
//                     // color: ColorUtils.secondaryColor,
//                     // elevation: 5.0,
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Image(
//                             image: AssetImage(ImageManager.image2),
//                             width: 100,
//                             height: 100,
//                           ),
//                           const SizedBox(
//                             height: 10,
//                           ),
//                           Text("LITE BOOST II",
//                               style: TextStyleManager.productTitle),
//                           Text("IDR 399.009",
//                               style: TextStyleManager.priceStyle),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 5,
//                   ),
//                   Card(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(cardBorderRadius)),
//                     // color: ColorUtils.secondaryColor,
//                     // elevation: 5.0,
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         // mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Image(
//                             image: AssetImage(ImageManager.image4),
//                             width: 100,
//                             height: 100,
//                           ),
//                           const SizedBox(
//                             height: 10,
//                           ),
//                           Text("OUTER II",
//                               style: TextStyleManager.productTitle),
//                           Text("IDR 439.600",
//                               style: TextStyleManager.priceStyle),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 5,
//                   ),
//                   Card(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(cardBorderRadius)),
//                     // color: ColorUtils.secondaryColor,
//                     // elevation: 5.0,
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Image(
//                             image: AssetImage(ImageManager.image3),
//                             width: 100,
//                             height: 100,
//                           ),
//                           const SizedBox(
//                             height: 10,
//                           ),
//                           Text("RAZR", style: TextStyleManager.productTitle),
//                           Text("IDR 439.600",
//                               style: TextStyleManager.priceStyle),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 25,
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             // Second Slider
//             Padding(
//               padding: const EdgeInsets.only(left: 30, right: 10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Text("PREMIUM", style: TextStyleManager.darkHead),
//                   Container(
//                     margin: const EdgeInsets.only(left: 10),
//                     height: 1.2,
//                     width: screenSize.width * dividerWidth,
//                     color: ColorManager.primaryColor,
//                     // margin: const EdgeInsets.only(left: 10.0, right: 10.0),
//                   ),
//                   // const Divider(
//                   //   color: Colors.redAccent, //color of divider
//                   //   height: 5, //height spacing of divider
//                   //   thickness: 3, //thickness of divier line
//                   //   indent: 25, //spacing at the start of divider
//                   //   // endIndent: 25, //spacing at the end of divider
//                   // ),
//                   TextButton(
//                       onPressed: () {},
//                       child: Text("VIEW ALL >",
//                           style: TextStyleManager.darkTextButton))
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             SizedBox(
//               height: 180,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: [
//                   const SizedBox(
//                     width: 25,
//                   ),
//                   Card(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(cardBorderRadius)),
//                     // color: ColorUtils.secondaryColor,
//                     // elevation: 5.0,
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Image(
//                             image: AssetImage(ImageManager.image1),
//                             width: 100,
//                             height: 100,
//                           ),
//                           const SizedBox(
//                             height: 10,
//                           ),
//                           Text("RAZR", style: TextStyleManager.productTitle),
//                           Text("IDR 439.600",
//                               style: TextStyleManager.priceStyle),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 5,
//                   ),
//                   Card(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(cardBorderRadius)),
//                     // color: ColorUtils.secondaryColor,
//                     // elevation: 5.0,
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Image(
//                             image: AssetImage(ImageManager.image2),
//                             width: 100,
//                             height: 100,
//                           ),
//                           const SizedBox(
//                             height: 10,
//                           ),
//                           Text("LITE BOOST II",
//                               style: TextStyleManager.productTitle),
//                           Text("IDR 399.009",
//                               style: TextStyleManager.priceStyle),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 5,
//                   ),
//                   Card(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(cardBorderRadius)),
//                     // color: ColorUtils.secondaryColor,
//                     // elevation: 5.0,
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         // mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Image(
//                             image: AssetImage(ImageManager.image4),
//                             width: 100,
//                             height: 100,
//                           ),
//                           const SizedBox(
//                             height: 10,
//                           ),
//                           Text("OUTER II",
//                               style: TextStyleManager.productTitle),
//                           Text("IDR 439.600",
//                               style: TextStyleManager.priceStyle),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 5,
//                   ),
//                   Card(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(cardBorderRadius)),
//                     // color: ColorUtils.secondaryColor,
//                     // elevation: 5.0,
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Image(
//                             image: AssetImage(ImageManager.image3),
//                             width: 100,
//                             height: 100,
//                           ),
//                           const SizedBox(
//                             height: 10,
//                           ),
//                           Text("RAZR", style: TextStyleManager.productTitle),
//                           Text("IDR 439.600",
//                               style: TextStyleManager.priceStyle),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 25,
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 30, right: 10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Text("STAR WARS", style: TextStyleManager.darkHead),
//                   Container(
//                     margin: const EdgeInsets.only(left: 10),
//                     height: 1.2,
//                     width: screenSize.width * dividerWidth,
//                     color: ColorManager.primaryColor,
//                     // margin: const EdgeInsets.only(left: 10.0, right: 10.0),
//                   ),
//                   TextButton(
//                       onPressed: () {},
//                       child: Text("VIEW ALL >",
//                           style: TextStyleManager.darkTextButton))
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             SizedBox(
//               height: 180,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: [
//                   const SizedBox(
//                     width: 25,
//                   ),
//                   Card(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(cardBorderRadius)),
//                     // color: ColorUtils.secondaryColor,
//                     // elevation: 5.0,
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           ColorFiltered(
//                             colorFilter: greyscaleImage,
//                             child: Image(
//                               image: AssetImage(ImageManager.image1),
//                               width: 100,
//                               height: 100,
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 10,
//                           ),
//                           Text("RAZR", style: TextStyleManager.productTitle),
//                           Text("IDR 439.600",
//                               style: TextStyleManager.priceStyle),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 5,
//                   ),
//                   Card(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(cardBorderRadius)),
//                     // color: ColorUtils.secondaryColor,
//                     // elevation: 5.0,
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           ColorFiltered(
//                             colorFilter: greyscaleImage,
//                             child: Image(
//                               image: AssetImage(ImageManager.image2),
//                               width: 100,
//                               height: 100,
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 10,
//                           ),
//                           Text("LITE BOOST II",
//                               style: TextStyleManager.productTitle),
//                           Text("IDR 399.009",
//                               style: TextStyleManager.priceStyle),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 5,
//                   ),
//                   Card(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(cardBorderRadius)),
//                     // color: ColorUtils.secondaryColor,
//                     // elevation: 5.0,
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         // mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           ColorFiltered(
//                             colorFilter: greyscaleImage,
//                             child: Image(
//                               image: AssetImage(ImageManager.image4),
//                               width: 100,
//                               height: 100,
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 10,
//                           ),
//                           Text("OUTER II",
//                               style: TextStyleManager.productTitle),
//                           Text("IDR 439.600",
//                               style: TextStyleManager.priceStyle),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 5,
//                   ),
//                   Card(
//                     elevation: 2, // Change this
//                     shadowColor: Colors.black,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(cardBorderRadius)),
//                     // color: ColorUtils.secondaryColor,
//                     // elevation: 5.0,
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           ColorFiltered(
//                             colorFilter: greyscaleImage,
//                             child: Image(
//                               image: AssetImage(ImageManager.image3),
//                               width: 100,
//                               height: 100,
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 10,
//                           ),
//                           Text("RAZR", style: TextStyleManager.productTitle),
//                           Text("IDR 439.600",
//                               style: TextStyleManager.priceStyle),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 25,
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//           ],
//         ),
