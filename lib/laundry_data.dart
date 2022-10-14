import 'package:flutter/material.dart';

class AddCount extends StatefulWidget {
  const AddCount({super.key});

  @override
  State<AddCount> createState() => _AddCountState();
}

class _AddCountState extends State<AddCount> {

  int counter= 0;
  addCounter(){
    setState((){
      counter++;
    });
  }
  reduceCounter (){
    setState(() {
      counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:  [
         ElevatedButton(style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.grey)) ,onPressed: (){addCounter();}, child: const Text('add')),
        Text('$counter', style: const TextStyle(fontSize: 25.0),),
        ElevatedButton(style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.amber)), onPressed: (){reduceCounter();}, child: const Text('reduce'),),
      ],
    );
  }
}