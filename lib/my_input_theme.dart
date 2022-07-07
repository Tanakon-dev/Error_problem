import 'package:flutter/material.dart';

class MyInputTheme {
  TextStyle _buildTextStyle(Color color, {double size = 16.0}) {
    return TextStyle(
      color: color,
      fontSize: size,
    );
  }

  OutlineInputBorder _buildBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
        color: color,
        width: 1.0,
      ),
    );
  }

  InputDecorationTheme theme() => const InputDecorationTheme(
        contentPadding: EdgeInsets.all(16),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        constraints: BoxConstraints(maxWidth: 150),

        ///Border
        enabledBorder: _buildBorder(Colors.grey[600]!),
        errorBorder: _buildBorder(Colors.red),
        focusedErrorBorder: _buildBorder(Colors.red),
        focusedBorder: _buildBorder(Colors.blue),
        disabledBorder: _buildBorder(Colors.grey[400]!),

        ///TextStyles
        suffixStyle: _buildTextStyle(Colors.black),
        counterStyle: _buildTextStyle(Colors.grey, size: 12),
        floatingLabelStyle: _buildTextStyle(Colors.black),

        errorStyle: _buildTextStyle(Colors.red, size: 12.0),
        helperStyle: _buildTextStyle(Colors.black, size: 12.0),
        hintStyle: _buildTextStyle(Colors.grey),
        labelStyle: _buildTextStyle(Colors.black),
        prefixStyle: _buildTextStyle(Colors.black),
      );
}
