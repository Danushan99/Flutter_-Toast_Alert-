import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Motion ToastApp"),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 60,
                margin: EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: () {
                    successMotionToast();
                  },
                  child: Text("Success Toast"),
                ),
              ),
            ]));
  }

  void successMotionToast() {
    MotionToast.success(
      title: "Successfully Sent",
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      description: "Example of success motion toast",
      descriptionStyle: TextStyle(fontSize: 15),
      width: 300,
      position: MOTION_TOAST_POSITION.BOTTOM,
      toastDuration: Duration(seconds: 4),
    ).show(context);
  }
}
