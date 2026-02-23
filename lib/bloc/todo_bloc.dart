import 'package:bloc/bloc.dart';
import 'package:bloc_todo/bloc/todo_event.dart';
import 'package:bloc_todo/bloc/todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState>{

  final List<String> todosList = [];

    TodoBloc() : super(const TodoState()){
      on<AddTodoEvent>(_addTodoEvent);
      on<RemoveTodoEvent>(_removeTodoEvent);
    }

    void _addTodoEvent(AddTodoEvent event, Emitter<TodoState> emit){

      todosList.add(event.task);
      emit(state.copyWith(todoList: List.from(todosList)));
    }

    void _removeTodoEvent(RemoveTodoEvent event, Emitter<TodoState> emit){
      todosList.remove(event.task);
      emit(state.copyWith(todoList: List.from(todosList)));

    }

}