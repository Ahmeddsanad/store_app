import 'package:flutter/material.dart';

Widget TextFormFieldItem(
    {required String text,
    TextEditingController? controller,
    Function(String)? onChanged,
    String? Function(String?)? validator,
    bool isObscureText = false,
    bool isPasswordField = false,
    Widget? SuffixIcon,
    TextInputType? keyboardType}) {
  return TextFormField(
    keyboardType: keyboardType,
    obscureText: isObscureText,
    onChanged: onChanged,
    validator: validator,
    controller: controller,
    decoration: InputDecoration(
      suffixIcon: SuffixIcon,
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.black,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(
          12.0,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.black,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(
          12.0,
        ),
      ),
      errorStyle: const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.black,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(
          12.0,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.black54,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(
          12.0,
        ),
      ),
      label: Text(
        '$text',
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18.0,
        ),
      ),
    ),
    style: const TextStyle(
      color: Colors.black,
    ),
  );
}
