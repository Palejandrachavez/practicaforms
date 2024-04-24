import 'package:flutter/gestures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterFormState> {
  RegisterCubit() : super(const RegisterFormState());

  void onSubmit() {
    //imprime el estado del cubit
    print('Submit:$state');
  }

  void userNameChanger(String value) {
    emit(state.copyWith(userName: value));
  }

  void emailChanger(String value) {
    emit(state.copyWith(email: value));
  }

  void passwordChanger(String value) {
    emit(state.copyWith(password: value));
  }
}
