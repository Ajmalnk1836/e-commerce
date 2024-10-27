import 'package:ecommerceapp/screens/login_screen/login_screen.dart';
import 'package:ecommerceapp/utils/app_colors.dart';
import 'package:ecommerceapp/utils/sizedbox_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            //
            HomePage(size: size),

            Positioned(
                left: 0,
                bottom: 0,
                child: Container(
                  height: 80,
                  width: size.width,
                  child: Stack(
                    children: [
                      //
                      CustomPaint(
                        size: Size(size.width, 80),
                        painter: BNavigation(),
                      ),
                      Center(
                        heightFactor: 0.6,
                        child: FloatingActionButton(
                          elevation: 0.1,
                          child: Icon(Icons.add),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        height: 80,
                        width: size.width,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.home)),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.home)),
                            SizedBox(
                              width: size.width * 0.20,
                            ),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.home)),
                            IconButton(onPressed: () {}, icon: Icon(Icons.home))
                          ],
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: size.height,
        width: size.width,
        color: AppColors.primaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.03,
              ),
              //row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  Column(
                    children: [
                      Text(
                        "Store location",
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.red,
                            size: 20,
                          ),
                          Text(
                            "Monodolibug, Syllet",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
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
              //search

              SizedBox(
                height: size.height * 0.01,
              ),
              TextformFieldWidget(),
              SizedBox(
                height: size.height * 0.01,
              ),
              Expanded(
                child: CustomTabBarWidget(),
              ),

              //multi tabs
              //product screens
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTabBarWidget extends StatefulWidget {
  const CustomTabBarWidget({
    super.key,
  });

  @override
  State<CustomTabBarWidget> createState() => _CustomTabBarWidgetState();
}

class _CustomTabBarWidgetState extends State<CustomTabBarWidget>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 45,
          width: double.infinity,
          child: TabBar(
            controller: tabController,
            unselectedLabelColor: Colors.white,
            dividerColor: Colors.transparent,
            labelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: const EdgeInsets.symmetric(vertical: 5.0),
            indicator: BoxDecoration(
              color: Colors.blue, // Color for selected tab background
              borderRadius:
                  BorderRadius.circular(18), // Optional: rounded corners
            ),
            tabs: _tabBarItems
                .map((e) => Container(
                      width: double.infinity,
                      color: Colors.transparent,
                      child: Text(
                        e,
                        style: TextStyle(fontSize: 12),
                      ),
                    ))
                .toList(),
          ),
        ),
        Expanded(
          child: TabBarView(controller: tabController, children: [
            ProductListScreen(),
            Center(
              child: Text(
                'Place Bid2',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Center(
              child: Text(
                'Place Bid2',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Center(
              child: Text(
                'Place Bid2',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ]),
        )
      ],
    );
  }
}

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.04,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Popular shoes",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              "See all",
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: PopularShowUiWidget(size: size),
              ),
              SizedBox(
                width: size.width * 0.06,
              ),
              Expanded(
                child: PopularShowUiWidget(size: size),
              ),
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "New Arrivals",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              "See all",
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        Container(
          width: double.infinity,
          height: size.height * 0.17,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18), color: Colors.grey),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                margin: EdgeInsets.only(left: 15, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Best choice",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Sample 3",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "849.87",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              )),
              Expanded(child: ShowProdocutWidget())
            ],
          ),
        ),
      ],
    );
  }
}

class PopularShowUiWidget extends StatelessWidget {
  const PopularShowUiWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: size.height * 0.23,
      ),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShowProdocutWidget(),
            Text("Best seller"),
            Text("Sample 1"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${122.00}"),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                      color: Colors.blue),
                  height: 45,
                  width: 40,
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ShowProdocutWidget extends StatelessWidget {
  const ShowProdocutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform(
      //     alignment: Alignment.center,
      transform: Matrix4.rotationZ(-0.2),
      child: Image.asset(
        'assets/product_images/shoe.png',
        height: 70,
      ),
    );
  }
}

List<String> _tabBarItems = ["Sample 1", "Sample 2", "Sample 3", "Sample 4"];

class BNavigation extends CustomPainter {
  //all the work we need to implement here
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    ///set initial point of path
    Path path = Path()..moveTo(0, 20);
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: const Radius.circular(10.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
