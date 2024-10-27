import 'package:ecommerceapp/screens/login_screen/login_screen.dart';
import 'package:ecommerceapp/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        centerTitle: true,
        title: Text(
          "My cart",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.03,
            ),
            CartItemWidget(size: size),
            SizedBox(
              height: size.height * 0.03,
            ),
            CartItemWidget(size: size),
            SizedBox(
              height: size.height * 0.03,
            ),
            CartItemWidget(size: size),
            Spacer(),
            Container(
              width: double.infinity,
              height: size.height * 0.35,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Subtotal",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "1259",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Shopping",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "1259",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.06,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Shopping",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "1259",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),

                    CustomButton(
                        bgColor: Colors.blue,
                        buttonNameColor: Colors.white,
                        buttonName: "Checkout"),
                  ],
                ),
              ),
            ),
            //row
          ],
        ),
      ),
    );
  }
}

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: size.height * 0.12,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: double.infinity,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            SizedBox(
              width: size.width * 0.02,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sample 1",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Sample 1",
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      minRadius: 15,
                      child: Text("-"),
                    ),
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    Text(
                      "1",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      minRadius: 15,
                      child: Text("+"),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "L",
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.delete))
              ],
            )
          ],
        ),
      ),
    );
  }
}
