// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListStore on _ListStore, Store {
  Computed<bool> _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_ListStore.isFormValid'))
          .value;
  Computed<bool> _$isListValidComputed;

  @override
  bool get isListValid =>
      (_$isListValidComputed ??= Computed<bool>(() => super.isListValid,
              name: '_ListStore.isListValid'))
          .value;

  final _$listModelAtom = Atom(name: '_ListStore.listModel');

  @override
  ObservableList<TodoModel> get listModel {
    _$listModelAtom.reportRead();
    return super.listModel;
  }

  @override
  set listModel(ObservableList<TodoModel> value) {
    _$listModelAtom.reportWrite(value, super.listModel, () {
      super.listModel = value;
    });
  }

  final _$tasksAtom = Atom(name: '_ListStore.tasks');

  @override
  ObservableList<dynamic> get tasks {
    _$tasksAtom.reportRead();
    return super.tasks;
  }

  @override
  set tasks(ObservableList<dynamic> value) {
    _$tasksAtom.reportWrite(value, super.tasks, () {
      super.tasks = value;
    });
  }

  final _$newTodoTitleAtom = Atom(name: '_ListStore.newTodoTitle');

  @override
  String get newTodoTitle {
    _$newTodoTitleAtom.reportRead();
    return super.newTodoTitle;
  }

  @override
  set newTodoTitle(String value) {
    _$newTodoTitleAtom.reportWrite(value, super.newTodoTitle, () {
      super.newTodoTitle = value;
    });
  }

  final _$loadTaskAsyncAction = AsyncAction('_ListStore.loadTask');

  @override
  Future<List<TodoModel>> loadTask() {
    return _$loadTaskAsyncAction.run(() => super.loadTask());
  }

  final _$dellTaskAsyncAction = AsyncAction('_ListStore.dellTask');

  @override
  Future<dynamic> dellTask(int id) {
    return _$dellTaskAsyncAction.run(() => super.dellTask(id));
  }

  final _$addTaskAsyncAction = AsyncAction('_ListStore.addTask');

  @override
  Future addTask({TodoModel recover, TodoModel edit}) {
    return _$addTaskAsyncAction
        .run(() => super.addTask(recover: recover, edit: edit));
  }

  final _$updateTaskAsyncAction = AsyncAction('_ListStore.updateTask');

  @override
  Future<dynamic> updateTask({TodoModel edit}) {
    return _$updateTaskAsyncAction.run(() => super.updateTask(edit: edit));
  }

  final _$_ListStoreActionController = ActionController(name: '_ListStore');

  @override
  void setNewTodoTitle(String value) {
    final _$actionInfo = _$_ListStoreActionController.startAction(
        name: '_ListStore.setNewTodoTitle');
    try {
      return super.setNewTodoTitle(value);
    } finally {
      _$_ListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listModel: ${listModel},
tasks: ${tasks},
newTodoTitle: ${newTodoTitle},
isFormValid: ${isFormValid},
isListValid: ${isListValid}
    ''';
  }
}
