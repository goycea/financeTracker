import 'package:finance_tracker/core/base.dart';
import 'package:finance_tracker/core/contex_extension.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with Base {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      colorConstant.firstGradient,
                      colorConstant.secondGradient
                    ])),
            child: Icon(
              Icons.add,
              color: colorConstant.backGround,
              size: context.dynamicHeight(0.055),
            )),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        color: colorConstant.white,

        //shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Container(
          height: context.dynamicHeight(0.09),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.stacked_bar_chart,
                color: colorConstant.bottomIcon,
              ),
              Icon(
                Icons.apps_sharp,
                color: colorConstant.bottomIcon,
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/icons/user.png',
                      width: context.dynamicWidth(0.095),
                      height: context.dynamicHeight(0.055),
                      fit: BoxFit.cover,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Good Morning!"),
                        Text(
                          "Arda Ertürk",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(width: context.dynamicWidth(0.25)),
                    IconButton(
                      iconSize: context.dynamicHeight(0.044),
                      onPressed: () {},
                      icon: Image.asset(
                        height: context.dynamicHeight(0.045),
                        'assets/icons/creditCard.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.currency_exchange_rounded),
                    )
                  ],
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    width: context.dynamicWidth(0.83),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/card.png"),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "İş Bankası",
                              style: TextStyle(
                                  color: colorConstant.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              width: context.dynamicWidth(0.35),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                height: context.dynamicHeight(0.025),
                                'assets/icons/pencil.png',
                                color: colorConstant.white,
                                fit: BoxFit.fill,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: context.dynamicHeight(0.08),
                        ),
                        Text(
                          "Balance:",
                          style: TextStyle(
                              color: colorConstant.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "27,584",
                          style: TextStyle(
                              color: colorConstant.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Transactions",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: context.dynamicWidth(0.25)),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "View All",
                        style: TextStyle(
                            fontSize: 16,
                            color: colorConstant.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(children: [
                  Card(
                    child: ListTile(
                      tileColor: colorConstant.white,
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                              image: AssetImage("assets/icons/health.png"),
                              height: context.dynamicHeight(0.05)),
                          const Text(
                            "Health",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: context.dynamicWidth(0.45),
                          ),
                          const Column(
                            children: [Text("-120.00"), Text("Today")],
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      tileColor: colorConstant.white,
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                              image: AssetImage("assets/icons/health.png"),
                              height: context.dynamicHeight(0.05)),
                          const Text(
                            "Health",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: context.dynamicWidth(0.45),
                          ),
                          const Column(
                            children: [Text("-120.00"), Text("Today")],
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      tileColor: colorConstant.white,
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                              image: AssetImage("assets/icons/health.png"),
                              height: context.dynamicHeight(0.05)),
                          const Text(
                            "Health",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: context.dynamicWidth(0.45),
                          ),
                          const Column(
                            children: [Text("-120.00"), Text("Today")],
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      tileColor: colorConstant.white,
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                              image: AssetImage("assets/icons/health.png"),
                              height: context.dynamicHeight(0.05)),
                          const Text(
                            "Health",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: context.dynamicWidth(0.45),
                          ),
                          const Column(
                            children: [Text("-120.00"), Text("Today")],
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ]),
      ),
    );
  }
}
