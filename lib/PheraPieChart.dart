import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class PheraPieChart extends StatefulWidget {
  final double caterer,decorator,photographer;
  const PheraPieChart({Key? key,required this.caterer,required this.decorator,required this.photographer}) : super(key: key);

  @override
  _PheraPieChartState createState() => _PheraPieChartState();
}

class _PheraPieChartState extends State<PheraPieChart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("PieChart"),
        ),
        body: Column(
          children: [
            PieChart(
              dataMap: {
                'decorator' :widget.decorator*1.0,
                'photographer':widget.photographer*1.0,
                'caterer':widget.caterer*1.0,
              },
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Table(
                border: TableBorder.all(borderRadius: BorderRadius.all(Radius.circular(3)),width: 1),
                children: [
                  TableRow(
                    children: [
                      TableCell(child: Center(child: Text("Decorator",style: TextStyle(fontWeight: FontWeight.bold),),),),
                      TableCell(child: Center(child: Text("${widget.decorator}")),),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(child: Center(child: Text("Photographer",style: TextStyle(fontWeight: FontWeight.bold),))),
                      TableCell(child: Center(child: Text("${widget.photographer}")),),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(child: Center(child: Text("Caterer",style: TextStyle(fontWeight: FontWeight.bold),))),
                      TableCell(child: Center(child: Text("${widget.caterer}")),),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(child: Center(child: Text("Total",style: TextStyle(fontWeight: FontWeight.bold),))),
                      TableCell(child: Center(child: Text("${widget.decorator+widget.caterer+widget.photographer}")),),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
