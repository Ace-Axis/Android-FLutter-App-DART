import 'package:notes/models/todo.dart';
import 'package:notes/repositories/repository.dart';

class TodoService {
  Repository _repository;

  TodoService() {
    _repository = Repository();
  }
  saveTodo(Todo todo) async {
    return await _repository.insertData('todos', todo.todoMap());
  }
}
