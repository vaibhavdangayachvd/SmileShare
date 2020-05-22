import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:smileshare/domain/category/category.dart';
import 'package:smileshare/domain/category/category_repository.dart';
import './bloc.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final CategoryRepository categoryRepository;
  StreamSubscription<List<Category>> _categorySubscription;

  HomeBloc(this.categoryRepository);

  @override
  HomeState get initialState {
    _categorySubscription = categoryRepository.getCategories().listen((event) {
      add(HomeEvent.updateData(event));
    });
    return const HomeState.initial();
  }

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    if (event.categories.isEmpty) {
      yield const HomeState.empty();
    } else {
      yield HomeState.hasData(event.categories);
    }
  }

  @override
  Future<void> close() {
    _categorySubscription.cancel();
    return super.close();
  }
}
