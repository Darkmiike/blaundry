import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails(
      {super.key, required this.clothTpe, required this.clotheColor});
  final String clothTpe;
  final String clotheColor;

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order Details"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.girl),
            title: Text("Clothe type is T- shirt"),
          ),
          ListTile(
            leading: Icon(Icons.color_lens),
            title: Text("Clothe color is blue"),
          ),
        ],
      )),
    );
  }
}
