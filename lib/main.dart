import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Click here';
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
        ),
        body: Center(
          child: currentIndex == 0
              ? Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: const Color.fromARGB(255, 114, 227, 118),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.white,
                          primary: const Color.fromARGB(194, 13, 170, 201),
                        ),
                        onPressed: () {
                          setState(() {
                            buttonName = 'Pro';
                          });
                        },
                        child: Text(buttonName),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            buttonName = 'Pro';
                          });
                        },
                        child: Text(buttonName),
                      ),
                    ],
                  ),
                )
              : Image.asset('images/meotom.png'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.audiotrack,
                  color: Colors.green,
                  size: 30.0,
                )),
            BottomNavigationBarItem(
              label: 'Setting',
              icon: Icon(
                Icons.settings,
                color: Colors.red,
              ),
            )
          ],
          currentIndex: currentIndex,
          onTap: (int index) => {
            setState(() {
              currentIndex = index;
            })
          },
        ),
      ),
    );
  }
}
