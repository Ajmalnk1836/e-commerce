import 'package:ecommerceapp/screens/bottom_navigation_screen/bottom_navigation.dart';
import 'package:ecommerceapp/screens/login_screen/login_screen.dart';
import 'package:ecommerceapp/utils/app_colors.dart';
import 'package:flutter/material.dart';

class PoductDetailsScreen extends StatefulWidget {
  const PoductDetailsScreen({super.key});

  @override
  State<PoductDetailsScreen> createState() => _PoductDetailsScreenState();
}

class _PoductDetailsScreenState extends State<PoductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.03,
              ),
              //row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    alignment: Alignment.topCenter,
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  Text(
                    "Men shoes",
                    style: TextStyle(color: Colors.white),
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    alignment: Alignment.topCenter,
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ],
              ),

              Container(
                width: double.infinity,
                height: size.width * 0.4,
                color: Colors.grey,
                child: Center(child: ShowProdocutWidget()),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Text(
                          "BEST SELLER",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Sample 1",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "967.80",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Text(
                          "njchsiduhcuisdncjsdc sdzcn wjkdsnfc weksjdfciewjsoidfjcioewsjfdjciowsdjficvhj dsuihvcu hdsuizxhvu idsnfucv duisjvcidjsiofjciodsjvoidjsiovjiodsjocvsmazxclkascshc cbsacbuia csahciuash ",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Text(
                          "Gallery",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ...List.generate(
                              4,
                              (index) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 6.0),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Row(
                          children: [
                            Text(
                              "Size",
                              style: TextStyle(color: Colors.white),
                            ),
                            Spacer(),
                            Text(
                              "EU",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Text(
                              "US",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Text(
                              "UK",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        SizedBox(
                          height: size.height * 0.06,
                          child: ListView.builder(
                            physics: const AlwaysScrollableScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 12,
                            itemBuilder: (context, index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              child: CircleAvatar(
                                child: Text('${index}'),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //
                                Text(
                                  "Price",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text("849",
                                    style: TextStyle(color: Colors.white))
                              ],
                            ),
                            CustomButton(
                              bgColor: Colors.blue,
                              buttonNameColor: Colors.white,
                              buttonName: "Add to cart",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
