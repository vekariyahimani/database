import 'dart:io';

import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class DBHelper {
  Database? database;


 Future<Database?> checkDB() async {
    if (database != null) {
      return database;
    }
    else {
      initDB();
    }
  }

  Future<Database> initDB() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, "himani.db");

    return openDatabase(path, version: 1,
      onCreate: (db, version) {
        String query = "CREATE TABLE incomeexpence(id,INTEGER  PEIMARY KEY AUTOINCREMENT,category TEXT,amount TEXT,time TEXT,date TEXT,paymentMode TEXT,status TEXT,note TEXT )";
        db.execute(query);
      },);
  }

  insertData

  (

  {required String id,required category,required amount,required time,required date,required paymentMode,required status,required note}) async{
  database=await checkDB();
  database!.insert("incomeexpence", {"id":id,"category":category,"amount":amount,"time":time,"date":date,"paymentMode":paymentMode,"status":status,"note":note});
  }
}


