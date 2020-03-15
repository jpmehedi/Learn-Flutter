import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Alert Dialog",
      home: AlertBox(),
    );
  }
}

class AlertBox extends StatefulWidget {
  @override
  _AlertBoxState createState() => _AlertBoxState();
}

class _AlertBoxState extends State<AlertBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert "),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
              child: Text("Alert Button"),
              onPressed: () {
                _showDialog(context);
              })
        ],
      ),
    );
  }
}

_showDialog(context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Warning!!"),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[Text("Are you sure delete this documents?")],
          ),
        ),
        actions: <Widget>[
          Expanded(
            child: RaisedButton(
              child: Text("Yes"),
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          RaisedButton(
            child: Text("No"),
            textColor: Colors.white,
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      );
    },
  );
}
