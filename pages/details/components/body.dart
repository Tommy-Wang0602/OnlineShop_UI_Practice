import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui_practice_app/constrain.dart';
import 'package:shop_ui_practice_app/models/product.dart';
import 'package:shop_ui_practice_app/pages/details/components/cart_counter.dart';
import 'package:shop_ui_practice_app/pages/details/components/color_and_size.dart';
import 'package:shop_ui_practice_app/pages/details/components/descropition.dart';
import 'package:shop_ui_practice_app/pages/details/components/product_title_with_Image.dart';

class DetailBodyPage extends StatelessWidget {
  final Product product;
  const DetailBodyPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      Description(product: product),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CartCouter(),
                          Container(
                            padding: const EdgeInsets.all(8),
                            height: 32,
                            width: 32,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFF6464),
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset('assets/icons/heart.svg'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
