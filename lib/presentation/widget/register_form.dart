import 'package:flutter/material.dart';
import 'package:practicaforms/presentation/widget/input/custom_text_form_field.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        const CustomTextFormField(),
        const SizedBox(
          height: 20,
        ),
        const CustomTextFormField(),
        const SizedBox(
          height: 20,
        ),
        const CustomTextFormField(),
        const SizedBox(
          height: 20,
        ),
        FilledButton.tonalIcon(
            onPressed: () {},
            icon: const Icon(Icons.save),
            label: const Text('Guardar información')),
      ],
    ));
  }
}
