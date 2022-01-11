import 'package:flutter/material.dart';
import 'package:responsive/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Responsive Page'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(5),
          child: ResponsivePage(
            mobile: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildContainerMedthod(),
                const SizedBox(
                  height: 10,
                ),
                buildTextMedthod(),
              ],
            ),
            tab: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: buildContainerMedthod(),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 2,
                    child: buildTextMedthod(),
                  )
                ],
              ),
            ),
            destop: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 3,
                    child: buildContainerMedthod(),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: buildTextMedthod(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Text buildTextMedthod() {
    return const Text(
      'This is the title fo the article\n\n this the details of the whole page\n where every details willbe discussion according to the title and the image showing above it.',
      style: TextStyle(
        fontSize: 30,
      ),
    );
  }

  Container buildContainerMedthod() {
    return Container(
      child: Image.asset('assets/images/road-1072821_960_720.jpg'),
      width: 350,
    );
  }
}
