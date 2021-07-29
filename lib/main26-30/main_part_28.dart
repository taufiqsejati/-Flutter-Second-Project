import 'package:flutter/material.dart';
import 'package:flutter_application_1/main26-30/product_card.dart';

const Color firstColor = Color(0xffF44336);
const Color secondColor = Color(0xff4CAF50);

class MainPart28 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: firstColor,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Align(
          alignment: Alignment.center,
          child: ProductCard(
            imageURL:
                "https://cdn-prod.medicalnewstoday.com/content/images/articles/308/308796/mixed-fruits.jpg",
            name: "Buah-buahan Mix 1 kg",
            price: "RP. 25.000",
            quantity: 0,
            notification: "Diskon 10%",
            onAddCartTap: () {},
            onIncTap: () {},
            onDecTap: () {},
          ),
        ),
      ),
    );
  }
}
