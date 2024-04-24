import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practicaforms/presentation/helper/validadores.dart';
import 'package:practicaforms/presentation/register/register_cubit.dart';
import 'package:practicaforms/presentation/widget/input/custom_text_form_field.dart';

class RegisterForm extends StatefulWidget {
  /// Es un formulario customizado [ Form ] que extiende de un widget de tipo [ StatefulWidget ]
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> with Validadores {
  final GlobalKey<FormState> _fromKey = GlobalKey<FormState>();
  String userName = '';
  String email = '';
  String password = '';
  late RegisterCubit registerCubit;

  @override
  Widget build(BuildContext context) {
    final RegisterCubit registerCubit = context.watch<RegisterCubit>();
    return Form(
        key: _fromKey,
        child: Column(
          children: [
            CustomTextFormField(
              label: 'Nombre de usuario',
              onChanged: (value) => userNameChanged(value, registerCubit),
              validador: usernameValidator,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              label: 'Correo Electrónico',
              onChanged: (value) => emailChanged(value, registerCubit),
              validador: emailValidator,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              label: 'Contraseña',
              obscureText: true,
              onChanged: (value) => passwordChanged(value, registerCubit),
              validador: passwordVallidator,
            ),
            const SizedBox(
              height: 20,
            ),
            FilledButton.tonalIcon(
                onPressed: () {
                  final isValid = _fromKey.currentState!.validate();
                  if (!isValid) return;
                  registerCubit.onSubmit();
                },
                icon: const Icon(Icons.save),
                label: const Text('Guardar información')),
          ],
        ));
  }

  userNameChanged(String value, RegisterCubit registerCubit) {
    registerCubit.userNameChanger(value);
    _fromKey.currentState?.validate();
  }

  emailChanged(String value, RegisterCubit registerCubit) {
    registerCubit.userNameChanger(value);
    _fromKey.currentState?.validate();
  }

  passwordChanged(String value, RegisterCubit registerCubit) {
    registerCubit.userNameChanger(value);
    _fromKey.currentState?.validate();
  }
}
