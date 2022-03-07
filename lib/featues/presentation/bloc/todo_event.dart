abstract class TodoEvent {}

class ToAdd extends TodoEvent {
  final String task;
  ToAdd(this.task);
}

class ToRemove extends TodoEvent {
  // final String remove;
  // TodoRemove(this.remove);
}
