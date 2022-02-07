import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neumorphism/components/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      this.hintText,
      this.hintStyle,
      this.borderRadius,
      this.controller,
      this.width,
      this.onChanged,
      this.obscureText})
      : super(key: key);

  final String? hintText;
  final TextStyle? hintStyle;
  final BorderRadius? borderRadius;
  final TextEditingController? controller;
  final double? width;
  final void Function(String)? onChanged;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      shape: BoxShape.rectangle,
      width: width ?? 300,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: TextField(
          obscureText: obscureText ?? false,
          onChanged: (value) => onChanged,
          controller: controller,
          decoration: InputDecoration.collapsed(
            focusColor: Colors.black,
            hintText: hintText,
            hintStyle: hintStyle ??
                GoogleFonts.comfortaa(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.blueGrey[300],
                ),
          ),
        ),
      ),
      borderRadius: borderRadius ?? BorderRadius.circular(20.0),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.height,
    this.width,
    this.child,
    this.shape,
    this.backgroundColor,
    this.borderRadius,
    this.boxShadow,
  }) : super(key: key);

  final double? height;
  final double? width;
  final Widget? child;
  final BoxShape? shape;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 60.0,
      width: width ?? 60.0,
      child: Center(child: child),
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        border: Border.all(
            color: const Color.fromRGBO(207, 216, 220, 0.8), width: 0.3),
        shape: shape ?? BoxShape.circle,
        color: backgroundColor ?? const Color(0xFFE6EEF8),
        boxShadow: boxShadow ?? boxShadowColor,
      ),
    );
  }
}
