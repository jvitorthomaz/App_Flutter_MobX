import 'package:app_desafio_flutter/src/core/ui/widgets/button_widget.dart';
import 'package:app_desafio_flutter/src/core/ui/widgets/input_field_widget.dart';
import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  final TextEditingController object;
  final TextInputType keybord;
  final void Function() onPressed;
  final String title;

  const FormWidget({
    super.key,
    required this.object,
    required this.keybord,
    required this.title,
    required this.onPressed
  });

  @override
  State<FormWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 190,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                widget.title,
                style: const TextStyle(
                  color: Color(0xFF070101),
                  fontSize: 24,
                ),
              ),
            ),
            Form(
              key: _formKey,
              child: InputFieldWidget(
                object: widget.object, 
                keyboard: widget.keybord
              ),
            ),
            ButtonWidget(
                onPressed: widget.onPressed,
                colorBackground: Color.fromRGBO(245, 215, 10, 1),
                colorText: Color.fromRGBO(40, 44, 42, 1),
                text: 'Continuar',
                border: false,
                widthButton: 296,
                heightButton: 55
            ),
          ],
        ),
      ),
    );
  }
}
