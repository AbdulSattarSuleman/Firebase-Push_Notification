import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  final String id;
  const ProductPage({super.key, required this.id});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product page ${widget.id}"),
      ),
    );
  }
}
