import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    log("Change: $change");
  }

  @override
  void onClose(BlocBase bloc) {
    log("Close: $bloc");
  }

  @override
  void onCreate(BlocBase bloc) {
    log("Create: $bloc");
  }

  @override
  void onDone(Bloc bloc, Object? event, [Object? error, StackTrace? stackTrace]) {
    log("Done: (Bloc: $bloc, Event: $event,Error: $error,StacTrace $stackTrace)");
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log("Error: (Bloc: $bloc,Error: $error,StacTrace $stackTrace)");
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    log("Event: (Bloc: $bloc,Object $event)");
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    log("Transition: (Bloc: $bloc,Transition $transition)");
  }
}