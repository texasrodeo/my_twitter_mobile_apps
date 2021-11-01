import 'package:flutter/material.dart';
import 'package:my_twitter/mvvm_redux/redux.dart';

import 'main_redux.dart';

final store = Store<AppState>();



void runReduxApp() {
  store.initialize(AppState(postsToShow: []));
}

abstract class BaseRepo<Model> {
  late Model model;

  Store<AppState> get appStore => store;
}

class BaseModel {}

class BaseViewModel<Repo extends BaseRepo<Model>, Model extends BaseModel> {
  late Repo repo;
  Model get model => repo.model;

  Store<AppState> get appStore => store;
}

abstract class BaseView<View extends StatefulWidget, Repo extends BaseRepo<Model>, Model extends BaseModel,
ViewModel extends BaseViewModel<Repo, Model>> extends State<View> with WidgetsBindingObserver {
  late Repo _repo;
  Repo get repo => _repo;

  late ViewModel _viewModel;
  ViewModel get viewModel => _viewModel;

  late Model _model;
  Model get model => _model;

  void executeOnStart();

  @mustCallSuper
  @override
  void initState() {
    initializeArchClasses();

    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback(
          (value) {
        executeOnStart();
      },
    );
  }

  void initializeArchClasses() {
    _model = createModel();

    _repo = createRepo();
    _repo.model = _model;

    _viewModel = createViewModel();
    _viewModel.repo = _repo;
  }

  ViewModel createViewModel();
  Repo createRepo();
  Model createModel();
}
