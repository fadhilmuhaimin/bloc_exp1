import 'package:bloc_exp1/model/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserBloc extends Bloc<int,User>{
  UserBloc() : super(UninitializedUser()) {
    on<int>((event, emit) async {
 try{
      User user = await User.getUserFromAPI(event);
      emit(user);
    }catch(_){

    }
    });
   
  }

}