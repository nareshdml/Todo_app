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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Todo App"),
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: ListView(
        children: [
          TextFormField(),
          ListTile(
            title: Text("Get up"),
            leading: Icon(Icons.info),
          ),
          ListTile(
            title: Text("code"),
            leading: Icon(Icons.info),
          ),
          ListTile(
            title: Text("sleep"),
            leading: Icon(Icons.info),
          ),
        ],
      ),
    );
  }
}
