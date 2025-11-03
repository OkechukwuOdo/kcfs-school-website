import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:kcfs_website/common/config/get_it.dart';
import 'package:kcfs_website/features/loading/domain/loading_repository.dart';


part 'loading_event.dart';
part 'loading_state.dart';

class LoadingBloc extends Bloc<LoadingEvent, LoadingState> {

  final loadingRepositoryInstance = getIt<LoadingRepository>();

  LoadingBloc() : super(LoadingInitial()) {
    on<LoadHomeData>(loadHomeData);
  }

  FutureOr<void> loadHomeData(LoadHomeData event, Emitter<LoadingState> emit) async{
  
try{
  emit(LoadingInitial());
  // await loadingRepositoryInstance.loadHomePage();
     await Future.delayed(const Duration(seconds: 5));
  emit(HomeLoaded());
}catch(e){
 emit(HomeError(e.toString()));
}
  }
}
