import 'package:flutter/material.dart';

void main() {
  runApp(TodoListApp());
}

class TodoListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List',
      home: TodoListScreen(),
    );
  }
}

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  List<TodoItem> _todoItems = [
    TodoItem(title: "Uy tozalash", isComplete: false),
    TodoItem(title: "Mollarga qarash", isComplete: true),
    TodoItem(title: "Qo'ylarga qarash", isComplete: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: ListView.builder(
        itemCount: _todoItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_todoItems[index].title),
            trailing: Checkbox(
              value: _todoItems[index].isComplete,
              onChanged: (newValue) {
                setState(() {
                  _todoItems[index].isComplete = newValue!;
                });
              },
            ),
          );
        },
      ),
    );
  }
}

class TodoItem {
  final String title;
  bool isComplete;

  TodoItem({required this.title, required this.isComplete});
}
