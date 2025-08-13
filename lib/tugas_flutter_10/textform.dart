import 'package:flutter/material.dart';

class TextFormEmail extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final String? Function(String?)? validator; // Tambahkan ini

  const TextFormEmail({
    super.key,
    required this.hintText,
    required this.controller,
    this.onChanged,
    this.validator, // Tambahkan ini
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      validator: validator, // Teruskan ke TextFormField
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.2),
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.2),
            width: 1.0,
          ),
        ),
        errorText: validator?.call(controller.text), // Untuk validasi real-time
      ),
    );
  }
}

class TextFormName extends StatelessWidget {
  const TextFormName({
    super.key,
    required this.hintText,
    required this.controller,
    this.onChanged,
    this.validator,
  });
  final String hintText;
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator; // Tambahkan ini
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      validator: validator, // Teruskan ke TextFormField
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.2),
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.2),
            width: 1.0,
          ),
        ),
        errorText: validator?.call(controller.text), // Untuk validasi real-time
      ),
    );
  }
}

class TextFormPhone extends StatelessWidget {
  const TextFormPhone({
    super.key,
    required this.hintText,
    required this.controller,
    this.onChanged,
    this.validator,
  });
  final String hintText;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      validator: validator, // Teruskan ke TextFormField
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.2),
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.2),
            width: 1.0,
          ),
        ),
        errorText: validator?.call(controller.text), // Untuk validasi real-time
      ),
    );
  }
}

class TextFormDomisiliKota extends StatelessWidget {
  const TextFormDomisiliKota({
    super.key,
    required this.hintText,
    required this.controller,
    this.onChanged,
    this.validator,
  });
  final String hintText;
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator; // Tambahkan ini
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      validator: validator, // Teruskan ke TextFormField
      keyboardType: TextInputType.streetAddress,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.2),
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.2),
            width: 1.0,
          ),
        ),
        errorText: validator?.call(controller.text), // Untuk validasi real-time
      ),
    );
  }
}
