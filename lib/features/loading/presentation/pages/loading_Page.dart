import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kcfs_website/common/config/app_route_constants.dart';
import 'package:kcfs_website/common/styles/colors.dart';
import 'package:kcfs_website/features/loading/presentation/bloc/loading_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';


class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoadingBloc()..add(LoadHomeData()),
      child: BlocConsumer<LoadingBloc, LoadingState>(
        listener: (context, state) {
          if (state is HomeLoaded) {
            context.go(RouteConstants.homePage);
          } else if (state is HomeError) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.message)));
          }
        },
         builder: ( context,  state){ 
          if(state is LoadingInitial){
            return Scaffold(
              body: Center(child: LoadingAnimationWidget.beat(
                color: AppColors.primaryColor,
                size: 150,
              )),
            );
          }
          if(state is HomeError){
            return Scaffold(body: Center(child: Text(state.message),),);
          }
          return Scaffold();
         },
    
      ),
    );
  }
}

// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//    return BlocProvider(
//     create: (_) =>LoadingBloc()..add(LoadWebInitialDataEvent()),
//     child: BlocConsumer<LoadingBloc, LoadingState>(
//       listener: (context, state){
//         if(state is LoadedInitial){
//           log("Calling::LoadedInitial listen");
//            context.go(RouteConstants.homePage);
//         }
//       },
  
//     builder:(context, state){
    //   if(state is LoadingInitial ){
    //       log("Calling::LoadingInitial 1 builder");
    //      return Scaffold(
    //   body: Center(
    //     child: LoadingAnimationWidget.twistingDots(
    //       leftDotColor: const Color(0xFF1A1A3F),
    //       rightDotColor: const Color.fromARGB(255, 55, 73, 234),
    //       size: 150,
    //     ),
    //   ),
    // );
    //   }
//       if(state is LoadingError ){
        
//          return Scaffold(
//       body: Center(
//         child: KText(text: state.message, texSize: 23,)
//       ),
//     );
//       }
//       return Scaffold(
//       body: Center(
//         child: LoadingAnimationWidget.twistingDots(
//           leftDotColor: const Color(0xFF1A1A3F),
//           rightDotColor: const Color.fromARGB(255, 55, 73, 234),
//           size: 150,
//         ),
//       ),
//     );
//     } 
//     ,),
 
//    );
   
//   }
  

// }