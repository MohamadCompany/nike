import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:nike_2/product_model.dart';
import 'dot_slider.dart';
import 'header_slider.dart';
import 'list_products.dart';
import 'off_model.dart';
import 'package:unique_identifier/unique_identifier.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  int setSection = 0;

  String _identifier = 'unknown';

  void initState() {
    super.initState();
    initUniqueIdentifierState();
  }

  Future<void> initUniqueIdentifierState() async {
    String? identifier;
    try {
      identifier = await UniqueIdentifier.serial;
    } on PlatformException {
      identifier = 'Failed to get Unique Identifier';
    }

    if (!mounted) return;

    setState(() {
      _identifier = identifier!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: Image.asset('assets/logo/nike_logo.png'),
        actions: const [
          Icon(Icons.shopping_basket),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: PageView.builder(
                        onPageChanged: (value) {
                          setState(() {
                            currentPage = value;
                          });
                        },
                        itemCount: myData.length,
                        itemBuilder: (BuildContext context, int index) {
                          return HeaderSlider(
                              pic: myData[index].pic,
                              url: myData[index].url,
                              category: myData[index].category,
                              off: myData[index].off);
                        })),
                const SizedBox(
                  height: 15,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(myData.length, (index) {
                      return DotSlider(
                        index: index,
                        currentPage: currentPage,
                      );
                    })),
                const SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            setSection = 0;
                          });
                        },
                        child: Container(
                          width: 72,
                          height: 36,
                          decoration: BoxDecoration(
                              color: setSection == 0
                                  ? Colors.black
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(18)),
                          child: Center(
                            child: Text(
                              "All",
                              style: TextStyle(
                                  color: setSection == 0
                                      ? Colors.white
                                      : const Color(0xff9C9C9C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            setSection = 1;
                          });
                        },
                        child: Container(
                          width: 72,
                          height: 36,
                          decoration: BoxDecoration(
                              color: setSection == 1
                                  ? Colors.black
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(18)),
                          child: Center(
                            child: Text(
                              "Running",
                              style: TextStyle(
                                  color: setSection == 1
                                      ? Colors.white
                                      : const Color(0xff9C9C9C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            setSection = 2;
                          });
                        },
                        child: Container(
                          width: 72,
                          height: 36,
                          decoration: BoxDecoration(
                              color: setSection == 2
                                  ? Colors.black
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(18)),
                          child: Center(
                            child: Text(
                              "Sneakers",
                              style: TextStyle(
                                  color: setSection == 2
                                      ? Colors.white
                                      : const Color(0xff9C9C9C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            setSection = 3;
                          });
                        },
                        child: Container(
                          width: 72,
                          height: 36,
                          decoration: BoxDecoration(
                              color: setSection == 3
                                  ? Colors.black
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(18)),
                          child: Center(
                            child: Text(
                              "Formal",
                              style: TextStyle(
                                  color: setSection == 3
                                      ? Colors.white
                                      : const Color(0xff9C9C9C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            setSection = 4;
                          });
                        },
                        child: Container(
                          width: 72,
                          height: 36,
                          decoration: BoxDecoration(
                              color: setSection == 4
                                  ? Colors.black
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(18)),
                          child: Center(
                            child: Text(
                              "Walking",
                              style: TextStyle(
                                  color: setSection == 4
                                      ? Colors.white
                                      : const Color(0xff9C9C9C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 350,
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: products.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListProducts(
                          image: products[index].image,
                          name: products[index].name,
                          price: products[index].price,
                        );
                      }),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          )),
    );
  }
}
