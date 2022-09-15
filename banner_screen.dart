import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BannerWidget(),
    );
  }
}

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRect(
          child: Banner(
            message: '25% off',
            location: BannerLocation.topEnd,
            color: Colors.red,
            child: Container(
              color: Colors.black,
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    10,
                    20,
                    10,
                    20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/Flutter-Queen.png'),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Flutter Queen',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('Subscribe'),
                            style:
                                ElevatedButton.styleFrom(primary: Colors.red),
                          )
                        ],
                      )
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
