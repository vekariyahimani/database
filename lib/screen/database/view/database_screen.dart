import 'package:database/utils/dbhelper.dart';
import 'package:flutter/material.dart';



class DataBaseScreen extends StatefulWidget {
  const DataBaseScreen({Key? key}) : super(key: key);

  @override
  State<DataBaseScreen> createState() => _DataBaseScreenState();
}

class _DataBaseScreenState extends State<DataBaseScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text(
          "DataBase Insert"
        ),
      ),

      body: Center(
        child: ElevatedButton( onPressed: () {
          DBHelper? dbHelper;
          dbHelper?.insertData(id: "1", category: "foof", amount: "2000", time: "9:00", date: "5-5-23", paymentMode: "online", status: "0", note: "_");

        },child: Text("INSERT"),),
      ),
    ));
  }
}
