import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RoundedSearch extends StatelessWidget {
  TextEditingController textController = TextEditingController();
  final String hintText;
  final ValueChanged<String> onChanged;
  final bool obText;

  RoundedSearch({
    Key? key,
    required this.textController,
    required this.hintText,
    required this.onChanged,
    this.obText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextContainer(
      child: TextField(
        cursorColor: kPrimaryColor,
        textAlign: TextAlign.center,
        obscureText: obText,
        controller: textController,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: kPrimaryColor),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class TextContainer extends StatelessWidget {
  final Widget child;
  const TextContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: size.width * 0.6,
      decoration: BoxDecoration(
          color: kGrayColor, 
          borderRadius: BorderRadius.circular(29)),
      child: child,
    );
  }
}
