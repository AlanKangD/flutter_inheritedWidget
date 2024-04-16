import 'package:flutter/material.dart';
import 'package:statefulwidget_prectice/2-inherited_widget/state/inherited_cart.dart';
import 'package:statefulwidget_prectice/common/product.dart';
import 'package:statefulwidget_prectice/common/product_tile.dart';

class Store extends StatelessWidget {
  const Store({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    InheritedCart inheritedCart =
        context.dependOnInheritedWidgetOfExactType<InheritedCart>()!;

    return Scaffold(
      body: ListView.builder(
        itemCount: storeProductList.length,
        itemBuilder: (context, index) {
          Product product = storeProductList[index];
          return ProductTile(
            product: product,
            isInCart: inheritedCart.cartProductList.contains(product),
            onPressed: inheritedCart.onProductPressed,
          );
        },
      ),
    );
  }
}
