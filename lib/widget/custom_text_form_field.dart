import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required TextEditingController controller,
    required String txtLable,
    this.textInputAction,
    this.textInputType,
  })  : _controller = controller,
        _txtLable = txtLable;

  final TextEditingController _controller;
  final String _txtLable;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      textInputAction: textInputAction,
      keyboardType: textInputType,
      decoration: InputDecoration(
          labelText: _txtLable,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 3, color: Colors.blue),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 3, color: Colors.blue),
            borderRadius: BorderRadius.circular(15),
          )),
    );
  }
}
