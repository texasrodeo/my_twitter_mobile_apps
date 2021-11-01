import 'dart:async';

class Observable<T> {
  late StreamController<T> _controller;
  Stream<T> get stream => _controller.stream.asBroadcastStream();

  T? current;
  T? previous;

  Observable() {
    _controller = StreamController<T>.broadcast();
  }

  Observable.initial(T initial) {
    _controller = StreamController<T>.broadcast();
    update(initial);
  }

  void update(T data) {
    previous = current;
    current = data;
    _controller.add(data);
  }

  void dispose() {
    _controller.close();
  }
}

typedef StateMapper<Value, State> = Value Function(State state);

class StateChange<Value> {
  final Value? previous;
  final Value next;

  StateChange(
      this.previous,
      this.next,
      );
}

class Store<State> {
  late Observable<State> _state;
  State get state => _state.current!;

  void updateState(State update) {
    _state.update(update);
  }

  void initialize(State state) {
    _state = Observable<State>.initial(state);
  }

  Stream<Value> updatesFor<Value>(StateMapper<Value, State> mapper) {
    return _state.stream.map((event) => StateChange(mapper(_state.previous ?? event), mapper(event))).where((element) {
      return element.previous != element.next;
    }).map((event) {
      return event.next;
    });
  }
}
