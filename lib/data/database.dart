import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {

    List todoList = [];

    // reference our box
    final _myBox = Hive.box('mybox');

  //  run this method if this is the first time ever opening the app.
    void createInitialData() {
      todoList = [
        ["Wake up", false],
        ["Chant Holy name", false],
      ];
    }

    // load the data from the database
    void loadData() {
      todoList = _myBox.get("TODOLIST");
    }

    void updateDataBase() {
      _myBox.put("TODOLIST", todoList);
    }
}