import 'package:blaundry/order_details.dart';
import 'package:flutter/material.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({super.key});

  @override
  State<PlaceOrder> createState() => PlaceOrderState();
}

class PlaceOrderState extends State<PlaceOrder> {
  final clothTpe = TextEditingController();
  final clotheColor = TextEditingController();
  final price = TextEditingController();
  final clothQuant = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("PlaceOrder"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Form(
          key: _formkey,
          child: Column(
            children: [
              Container(
                height: 80,
                color: const Color.fromARGB(251, 236, 166, 231),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Enter the details of your laundary orders and click to proceed.",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  validator: (value) {
                    if (value == "") {
                      return "clothe type is required";
                    }
                    if (value!.length < 3) {
                      return "minimum of 3 characters";
                    }
                    return null;
                  },
                  controller: clothTpe,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(183, 144, 34, 127),
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(50)),
                      hintText: 'e.g T- shirt',
                      labelText: "Clothe Type 👔 👕 👖 👘"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  controller: clotheColor,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(183, 144, 34, 127),
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(50)),
                      hintText: 'e.g red',
                      labelText: "Clothe Color"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  controller: price,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(183, 144, 34, 127),
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(50)),
                      labelText: "Price",
                      prefix: const Text("₦ ")),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  controller: clothQuant,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: "Quantity"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      print("Clothe type: $clothTpe.text");

                      print(clotheColor.text);
                      print(price.text);
                      print(clothQuant.text);

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return  OrderDetails(clothTpe: clothTpe.text, clotheColor: clotheColor.text)
                        }),
                      );
                    }
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
                  child: const Text("Proceed"))
            ],
          ),
        )));
  }
}
