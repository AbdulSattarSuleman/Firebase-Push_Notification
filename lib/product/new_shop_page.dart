import 'package:flutter/material.dart';

class NewShopPage extends StatelessWidget {
  const NewShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 120,
            child: AppBar(
              title: Text('MENS SHOP'),
            ),
          ),
        ],
      ),
    );
  }
}
