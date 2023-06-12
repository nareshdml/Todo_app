import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TodoApp",
      home: TodoApp(),
    ));

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  String value = "";
  List listTodo = [''];
  addTodo(String item) {
    setState(() {
      listTodo.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Todo App"),
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          addTodo(value);
        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: listTodo.length,
          itemBuilder: (context, index) {
            return index == 0
                ? Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      decoration: InputDecoration(hintText: "Add Item"),
                      onChanged: (val) {
                        value = val;
                      },
                    ),
                  )
                : ListTile(
                    leading: Icon(Icons.info),
                    title: Text(
                      '${listTodo[index]}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  );
          }),
    );
  }
}
