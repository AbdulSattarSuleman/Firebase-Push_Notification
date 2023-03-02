import 'package:ecommerce_app_ui/product/product_slider.dart';
import 'package:ecommerce_app_ui/utils/color_manager.dart';
import 'package:ecommerce_app_ui/utils/text_style_manager.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  final String productTitle, productImage;
  const ProductPage(
      {super.key, required this.productTitle, required this.productImage});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: Column(
            children: [
              // Images Slider + Icon
              Stack(
                children: [
                  SizedBox(
                    height: 220,
                    child: AppBar(
                      leading: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios_new_outlined)),
                      title: Text(widget.productTitle),
                      actions: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.mark_email_unread_outlined))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 90, left: 0, right: 50),
                    child: Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15))),
                      elevation: 8,
                      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: SizedBox(
                          height: screenSize.height * 0.28,
                          child: const ProductSlider()),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: screenSize.height * 0.32,
                      // left: screenSize.width * 0.65),
                    ),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Card(
                        elevation: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "IDR 459.800",
                            style: TextStyleManager.darkHead,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 190, left: screenSize.width * 0.78),
                    child: Card(
                      shape: const StadiumBorder(),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_outline_rounded)),
                    ),
                  ),
                ],
              ),
              // After  Slider Widgets
              const SizedBox(
                height: 20,
              ),

              // Description Tabs Name
              SizedBox(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: TabBar(
                      labelPadding: EdgeInsets.zero,
                      indicatorColor: ColorManager.primaryColor,
                      unselectedLabelColor: ColorManager.greColor,
                      labelColor: ColorManager.primaryColor,
                      labelStyle: TextStyleManager.tabText,
                      padding: EdgeInsets.zero,
                      tabs: const [
                        Tab(
                          child: Text("DESCRIPTION"),
                        ),
                        Tab(
                          text: "SIZE GUIDE",
                        ),
                        Tab(
                          text: "REVIEW",
                        ),
                      ]),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TabBarView(children: [
                  Text(
                    "Duis qui deserunt in id in culpa proident ullamco. Velit excepteur proident anim mollit et tempor pariatur. Non aliquip exercitation consectetur eiusmod ipsum est consectetur aliqua. Sit enim commodo mollit consequat aliquip ullamco nisi velit.",
                    style: TextStyleManager.priceStyle,
                  ),
                  Text(
                    "SIZE GUIDE aasdad 123123123312",
                    style: TextStyleManager.priceStyle,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: ColorManager.primaryColor)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: ColorManager.primaryColor)),
                      border: InputBorder.none,
                      hintText: "How it is?",
                    ),
                  ),
                ]),
              )),

              // Divider Line
              Divider(
                height: 1,
                thickness: 1,
                color: ColorManager.greColor.withOpacity(0.1),
              ),
              const SizedBox(
                height: 20,
              ),
              // Outline Buttons
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Quantity Button
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Text("Quantity"),
                          Icon(Icons.keyboard_arrow_down)
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    // Size Button
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(45, 5, 45, 5),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Text("Size"),
                          Icon(Icons.keyboard_arrow_down)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: SizedBox(
                  width: screenSize.width * 1,
                  height: 45,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Add To Cart".toUpperCase(),
                      )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ));
  }
}
