import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var size, height, width;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Text(
          "main page",
        ),

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
//     DateTime now = DateTime.now();
// String formattedDate = Date('kk:mm:ss \n EEE d MMM').format(now);
    return MaterialApp(
        home: Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          padding: EdgeInsets.only(left: 2, right: 2),
          child: Column(
            children: [
              Card(
                elevation: 5,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Container(
                  height: height / 2.7,
                  decoration: const BoxDecoration(
                      color: Color(0xff4285f5),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Container(
                              child: const Text(
                                "User Name",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ]),
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 20),
                              child:
                                  CircleAvatar(backgroundColor: Colors.white)),
                        ],
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Where do \n you want to start ?',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ),
                      Container(
                        width: width / 1.2,
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              disabledBorder: InputBorder.none,
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              hintText: 'Search for an event',
                              hintStyle: GoogleFonts.roboto(
                                  textStyle: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w700,
                              )),
                              focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                              ),
                              contentPadding: const EdgeInsets.only(
                                  left: 14.0, bottom: 8.0, top: 8.0),
                              suffixIcon: const Icon(Icons.search)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: height / 45),
              Container(
                alignment: Alignment.centerLeft,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text(
                  'Our Next Events',
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                height: height / 15,
                width: 400,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  Card(
                    color: Color(0xffF2F2F2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        '#All',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      width: 100,
                      height: 50,
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    color: Color(0xffF2F2F2),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        '#Hackathon',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      width: 100,
                      height: 50,
                    ),
                  ),
                  Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    color: const Color(0xffF2F2F2),
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        '#Workshop',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      width: 100,
                      height: 50,
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    color: Color(0xffF2F2F2),
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        '#Hackathon',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      width: 100,
                      height: 50,
                    ),
                  )
                ]),
              ),
              SizedBox(height: height / 45),
              Container(
                height: height / 2.2,
                width: width,
                child: Card(
                    elevation: 5,
                    color: Color(0xffDDE4EC),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(children: [
                        Container(
                          height: height / 4,
                          width: width,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            image: DecorationImage(
                              image: AssetImage("assets/icons/ure.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Container(
                          width: width,
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
                          child: Text(
                            'HACK THE BOT',
                            // textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 25),
                          ),
                        ),
                        Container(
                          width: width,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'ALGIERS',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 20),
                          ),
                        ),
                        Container(
                          width: width,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.centerRight,
                          child: Text(
                            '33D 10H 12M',
                            style: GoogleFonts.poppins(
                                color: Colors.green,
                                fontWeight: FontWeight.normal,
                                fontSize: 18),
                          ),
                        ),
                      ]),
                    )),
              ),
              SizedBox(height: height / 45)
            ],
          ),
        )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        currentIndex: 0,
        backgroundColor: Colors.black,
        elevation: 5,
        unselectedItemColor: Colors.black,
        fixedColor: Colors.blue, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text('fe'),
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 20,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile')),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Messages'),
          )
        ],

      ),
    ));
  }
}
