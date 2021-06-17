import 'package:mobx/mobx.dart';
import 'package:tarefas/app/models/todo_model.dart';
import 'package:tarefas/app/repository/todo.repository.dart';
part 'list_store.g.dart';

class ListStore = _ListStore with _$ListStore;

abstract class _ListStore with Store {
  late TodoRepository _todoRepository;

  _ListStore() {
    _todoRepository = TodoRepository();
  }

  @observable
  ObservableList<TodoModel> listModel = ObservableList<TodoModel>();

  @action
  Future<List<TodoModel>> loadTask() async {
    listModel = ObservableList<TodoModel>.of(await _todoRepository.getTasks());
    return listModel;
  }

  @observable
  ObservableList? tasks;

  @observable
  String newTodoTitle = "";

  @action
  void setNewTodoTitle(String value) => newTodoTitle = value;

  @action
  Future dellTask(int id) async {
    tasks = await _todoRepository.delete(id);
  }

  @computed
  bool get isFormValid => newTodoTitle.isNotEmpty;

  @computed
  bool get isListValid => listModel.isNotEmpty;

  @action
  addTask({TodoModel? recover, TodoModel? edit}) async {
    final repository = TodoRepository();
    tasks = ObservableList();
    if (recover == null && edit == null) {
      var data = await repository.create(
        TodoModel(
          name: newTodoTitle,
          date: DateTime.now().toString(),
        ),
      );
      tasks!.add(data);
    } else if (recover != null && edit == null) {
      var data = await repository.create(
        TodoModel(
          name: recover.name,
          date: recover.date,
        ),
      );
      tasks!.add(data);
    } else {
      tasks = await repository.update(
        TodoModel(
          id: edit!.id,
          name: edit.name,
          date: edit.date,
        ),
      );
    }
  }

  @action
  Future updateTask({TodoModel? edit}) async {
    tasks = await _todoRepository.update(edit!);
  }
}
