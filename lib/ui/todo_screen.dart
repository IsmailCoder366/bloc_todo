import 'package:bloc_todo/bloc/todo_event.dart';
import 'package:bloc_todo/bloc/todo_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/todo_bloc.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo App')),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          if(state.todoList.isEmpty){
            return Center(child: Text('not yet added'));
          }
          else if(state.todoList.isNotEmpty){
            return ListView.builder(
              itemCount: state.todoList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(state.todoList[index]),
                  trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                    context.read<TodoBloc>().add(RemoveTodoEvent(task: state.todoList[index]));

                  }),
                );
              },
            );
          }
          else{
            return SizedBox();
          }

        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          for(int i = 0; i<10; i++){
            context.read<TodoBloc>().add(AddTodoEvent(task: 'ismail' + i.toString()));
          }

        },
        child: Icon(Icons.add),
      ),
    );
  }
}
