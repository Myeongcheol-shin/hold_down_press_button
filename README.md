# Hold Press Button

## Simple Usage 
```
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          SizedBox(
            width: 300,
            child: Center(
                child: HoldPressButton(
              pressTime: 1,
              contents: "1",
              backgroundColor: Colors.blue,
              fontColor: Colors.black,
              pressFunc: () {
                setState(() {});
              },
            )),
          ),
        ],
      )),
    );
  }
}

```

## Tags Parameters
|PropName|Description|default Value|
|------|---|---|
|pressTime|Time to press it|required|
|contents|button text|null|
|pressFunc|Functions that will run when pressed all the way|function|
|textSize|text Size|30|
|fontColor|text Color|Colors.white|
|textWeight|text Weight|Weight.normal|
|backgroundColor|button background|Colors.amber|

## Use this package as a library
Depend on it
Run this command:

With Dart:
```
 $ dart pub add long_hold_down_press_button
```
With Flutter:
```
 $ flutter pub add long_hold_down_press_button
```
This will add a line like this to your package's pubspec.yaml (and run an implicit dart pub get):

dependencies:
```
  long_hold_down_press_button: ^0.0.1
```
Alternatively, your editor might support dart pub get or flutter pub get. Check the docs for your editor to learn more.

Import it
Now in your Dart code, you can use:
```
import 'package:long_hold_down_press_button/hold_down_press_button.dart';
```
## ScreenShot
![화면 기록 2023-08-16 오후 11 18 25](https://github.com/Myeongcheol-shin/hold_down_press_button/assets/82868004/80f14723-5743-4a3b-a374-18cd9cd7e11b)

