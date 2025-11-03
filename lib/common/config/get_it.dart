import 'package:get_it/get_it.dart';
import 'package:kcfs_website/features/loading/domain/loading_repository.dart';


final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<LoadingRepository>(()=>LoadingRepository());
  //  getIt.registerLazySingleton<AuthRepository>(()=>AuthRepository());

}