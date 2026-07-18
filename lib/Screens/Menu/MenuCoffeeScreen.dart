import 'package:coffeapp/Screens/OrderScreen.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';

class MenuCoffeeScreen extends StatelessWidget {
  static const String id = "/MenuCoffeeScreen";

  const MenuCoffeeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff98694F),
      body: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      "assets/images/images11.png",
                      fit: BoxFit.fitWidth,
                    ))),
            Positioned(
                left: 30,
                top: 58,
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/MenuScreen");
                    },
                    child: Image.asset("assets/images/Vector.png"))),
            Positioned(
              right: 23,
              top: 53,
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OrderScreen(),
                      ),
                    );
                  },
                  child: Image.asset("assets/images/Order - icon.png")),
            ),
            const Positioned(
                top: 37,
                right: 15,
                child: SizedBox(
                  width: 24,
                  child: FloatingActionButton(
                    backgroundColor: Color(0xffE9CBA7),
                    onPressed: null,
                    child: Text(
                      "3",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
            const Positioned(
                top: 95,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 144.0),
                  child: Text(
                    "Menu",
                    style: TextStyle(
                        color: kMainColor, fontSize: 48, fontFamily: "Lobster"),
                  ),
                )),
            Positioned(
                top: 190,
                child: Column(
                  children: [
                    SizedBox(
                      width: 900,
                      child: ListTile(
                        leading: Container(
                          child: FloatingActionButton(
                            backgroundColor: kMainColor,
                            onPressed: () {},
                            child: const Icon(
                              Icons.add,
                              size: 48,
                              color: Color(0xff98694F),
                            ),
                          ),
                        ),
                        title: const Text(
                          "Espresso ...................... \$3.00",
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: "Lobster",
                              color: kMainColor),
                        ),
                        subtitle: const Text(
                          "Single shot Espresso",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 900,
                      child: ListTile(
                        leading: Container(
                          child: FloatingActionButton(
                            backgroundColor: kMainColor,
                            onPressed: () {},
                            child: const Icon(
                              Icons.add,
                              size: 48,
                              color: Color(0xff98694F),
                            ),
                          ),
                        ),
                        title: const Text(
                          "Espresso ...................... \$3.00",
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: "Lobster",
                              color: kMainColor),
                        ),
                        subtitle: const Text(
                          "Single shot Espresso",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 900,
                      child: ListTile(
                        leading: Container(
                          child: FloatingActionButton(
                            backgroundColor: kMainColor,
                            onPressed: () {},
                            child: const Icon(
                              Icons.add,
                              size: 48,
                              color: Color(0xff98694F),
                            ),
                          ),
                        ),
                        title: const Text(
                          "Espresso ...................... \$3.00",
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: "Lobster",
                              color: kMainColor),
                        ),
                        subtitle: const Text(
                          "Single shot Espresso",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 900,
                      child: ListTile(
                        leading: Container(
                          child: FloatingActionButton(
                            backgroundColor: kMainColor,
                            onPressed: () {},
                            child: const Icon(
                              Icons.add,
                              size: 48,
                              color: Color(0xff98694F),
                            ),
                          ),
                        ),
                        title: const Text(
                          "Espresso ...................... \$3.00",
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: "Lobster",
                              color: kMainColor),
                        ),
                        subtitle: const Text(
                          "Single shot Espresso",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 900,
                      child: ListTile(
                        leading: Container(
                          child: FloatingActionButton(
                            backgroundColor: kMainColor,
                            onPressed: () {},
                            child: const Icon(
                              Icons.add,
                              size: 48,
                              color: Color(0xff98694F),
                            ),
                          ),
                        ),
                        title: const Text(
                          "Espresso ...................... \$3.00",
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: "Lobster",
                              color: kMainColor),
                        ),
                        subtitle: const Text(
                          "Single shot Espresso",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 900,
                      child: ListTile(
                        leading: Container(
                          child: FloatingActionButton(
                            backgroundColor: kMainColor,
                            onPressed: () {},
                            child: const Icon(
                              Icons.add,
                              size: 48,
                              color: Color(0xff98694F),
                            ),
                          ),
                        ),
                        title: const Text(
                          "Espresso ...................... \$3.00",
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: "Lobster",
                              color: kMainColor),
                        ),
                        subtitle: const Text(
                          "Single shot Espresso",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
