import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui_practice_app/constrain.dart';
import 'package:shop_ui_practice_app/models/product.dart';
import 'package:shop_ui_practice_app/pages/details/components/body.dart';

class DetailPage extends StatelessWidget {
  final Product product;
  const DetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: DetailBodyPage(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/search.svg'),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/cart.svg'),
        ),
        const SizedBox(
          width: kDefaultPaddin / 2,
        ),
      ],
    );
  }
}
