import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pherapiechart/PheraPieChart.dart';

class UserInput extends StatefulWidget {
  const UserInput({Key? key}) : super(key: key);

  @override
  _UserInputState createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  TextEditingController caterer=TextEditingController();
  TextEditingController photographer=TextEditingController();
  TextEditingController decorator=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("PieChart"),
        ),
        body: Builder(
          builder: (context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "Decorator amount",
                    border: OutlineInputBorder(),
                  ),
                  controller: decorator,
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Photographer amount",
                    border: OutlineInputBorder(),
                  ),
                  controller: photographer,
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Caterer amount",
                    border: OutlineInputBorder(),
                  ),
                  controller: caterer,
                  keyboardType: TextInputType.number,
                ),
                RaisedButton(
                  child: Text("Submit",style: TextStyle(color: Colors.white),),
                  color: Colors.blue,
                  onPressed: () {
                    (caterer.text=="" || decorator.text=="" || photographer.text=="")?Scaffold.of(context).showSnackBar(SnackBar(content: Text("Please enter valid values"))):Navigator.push(context, MaterialPageRoute(builder: (context) => PheraPieChart(caterer: int.parse(caterer.text)*1.0, decorator: int.parse(decorator.text)*1.0, photographer: int.parse(photographer.text)*1.0)));
                  },
                )
              ],
            );
          }
        ),
      ),
    );
  }
}
