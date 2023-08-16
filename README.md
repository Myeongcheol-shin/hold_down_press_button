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


## ScreenShot
![Screenshot_1692193713](https://github.com/Myeongcheol-shin/hold_down_press_button/assets/82868004/f2aa523a-6a9e-491e-bc79-50ca1c126084)
![Screenshot_1692193715](https://github.com/Myeongcheol-shin/hold_down_press_button/assets/82868004/7250dfc1-1df9-48fd-a92e-837573485b38)
