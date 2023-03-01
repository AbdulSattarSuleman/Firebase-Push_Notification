import 'package:ecommerce_app_ui/utils/image_manager.dart';
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
      body: Stack(
        children: [
          Container(
            height: 220,
            child: AppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios_new_outlined)),
              title: Text(widget.productTitle),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.mark_email_unread_outlined))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90, left: 0, right: 30),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              elevation: 8,
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Image(
                  image: AssetImage(ImageManager.image1),
                  width: screenSize.width * 0.7,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 280, left: screenSize.width * 0.65),
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
          Padding(
            padding: EdgeInsets.only(top: 190, left: screenSize.width * 0.71),
            child: Card(
              shape: StadiumBorder(),
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.favorite_outline_rounded)),
            ),
          )
        ],
      ),
    );
  }
}
