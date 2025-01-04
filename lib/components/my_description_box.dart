import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {

    //textstyle
    var MyPrimaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary);
    var MySecondaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary);


    return Container(
      decoration: BoxDecoration (
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(left:25, right:25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //delivery fee
          Column(
            children: [
              Text('\₱20', 
              style: MyPrimaryTextStyle),
              Text('Delivery Fee', 
              style: MySecondaryTextStyle),
            ],
           ),
          //delivery time

          Column(
            children: [
              Text('10-30mins', 
              style: MyPrimaryTextStyle),
              Text('Delivery Time', 
              style: MySecondaryTextStyle),
            ],
           ),

      ],
      ),
    );
  }
}