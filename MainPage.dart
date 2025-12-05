import 'package:flutter/material.dart';
import 'package:units_converter/TabBar/LengthPage.dart';
import 'package:units_converter/TabBar/TemperaturesPage.dart';
import 'package:units_converter/TabBar/WeightPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> with SingleTickerProviderStateMixin{

  static const List<Tab> myTabs = <Tab>[
    Tab(text: "Length"),
    Tab(text: "Weight"),
    Tab(text: "Temperatures"),
  ];

  late TabController tabcontroller;

  @override
  void initState(){
    super.initState();
    tabcontroller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose(){
    tabcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(20)
          ),
          width: 600,
          height: 700,
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                "Unit Convertor",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 10,),
              TabBar(
                controller: tabcontroller,
                labelStyle: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                tabs: myTabs
              ),
              Expanded(
                child: TabBarView(
                  controller: tabcontroller,
                  children: [
                    LengthPage(),
                    WightPage(),
                    TemperaturesPage()
                  ]
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}