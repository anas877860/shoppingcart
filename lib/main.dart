import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart/provider/hand_bag_provider.dart';
import 'package:shopping_cart/view/hand_bag_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => HandBagProvider()),],
      child: MaterialApp(
        
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.blue,
          ),
          home: ShoppingCartScreen()),
    );
  }
}

class ShoppingCartScreen extends StatelessWidget {
  ShoppingCartScreen({super.key});

  List<Tab> tabs = [
    const Tab(
      text: "Hand bag",
    ),
    const Tab(
      text: "Jewellery",
    ),
    const Tab(
      text: "Footwear",
    ),
    const Tab(
      text: "Dress",
    )
  ];
  List<Widget> tabsContent = [
    const HandBagScreen(),
    const HandBagScreen(),
    const HandBagScreen(),
    const HandBagScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          actions: const [
            Icon(
              Icons.search,
              color: Colors.grey,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.shopping_cart_outlined,
              color: Colors.grey,
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 13.0),
                child: Text(
                  "Woman",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              TabBar(
                  indicatorColor: Colors.black,
                  labelColor: Colors.black,
                  indicatorWeight: 1,
                  indicator: const UnderlineTabIndicator(
                      borderSide: BorderSide(
                        width: 3.0,
                      ),
                      insets: EdgeInsets.only(left: 17, right: 50)),
                  tabs: tabs),
              Expanded(child: TabBarView(children: tabsContent))
            ],
          ),
        ),
      ),
    );
  }
}
