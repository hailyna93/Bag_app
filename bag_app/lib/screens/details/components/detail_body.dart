import 'package:bag_app/constants.dart';
import 'package:bag_app/models/products.dart';
import 'package:bag_app/screens/details/components/add_to_cart.dart';
import 'package:bag_app/screens/details/components/color_and_size.dart';
import 'package:bag_app/screens/details/components/counter_with_fav_btn.dart';
import 'package:bag_app/screens/details/components/description.dart';
import 'package:bag_app/screens/details/components/product_title_with_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailBody extends StatelessWidget {
  final Product product;

  const DetailBody({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.4),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPadding,
                      right: kDefaultPadding),
                  //height: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      Description(product: product),
                      CounterWithFaveriteBtn(),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
