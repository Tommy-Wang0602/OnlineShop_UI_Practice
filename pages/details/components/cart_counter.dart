import 'package:flutter/material.dart';
import 'package:shop_ui_practice_app/constrain.dart';

class CartCouter extends StatefulWidget {
  const CartCouter({super.key});

  @override
  State<CartCouter> createState() => _CartCouterState();
}

class _CartCouterState extends State<CartCouter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlinedButton(
            icon: Icons.remove,
            press: () {
              if (numOfItems > 1) {
                setState(() {
                  numOfItems--;
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(numOfItems.toString().padLeft(2, '0'),
              style: Theme.of(context).textTheme.headlineSmall),
        ),
        buildOutlinedButton(
          icon: Icons.add,
          press: () {
            setState(
              () {
                numOfItems++;
              },
            );
          },
        ),
      ],
    );
  }

  SizedBox buildOutlinedButton(
      {required IconData icon, required Function() press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: const ButtonStyle(
          padding: MaterialStatePropertyAll(
            EdgeInsets.all(4),
          ),
          shape: MaterialStatePropertyAll(
            StadiumBorder(),
          ),
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
