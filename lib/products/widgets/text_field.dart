import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final IconData preffixIcon;
  final bool hasSuffixIcon;
  final TextEditingController controller;
  const MyTextField({
    Key? key,
    required this.hintText,
    required this.preffixIcon,
    required this.hasSuffixIcon,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = context.width;
    double height = context.height;
    return Container(
      alignment: Alignment.center,
      height: height * 7.3 / 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
        // ignore: prefer_const_literals_to_create_immutables
        boxShadow: [
          const BoxShadow(
            color: Colors.grey,
            blurRadius: 20.0,
            spreadRadius: 0.1,
            offset: const Offset(1.0, 10.0), // shadow direction: bottom right
          ),
        ],
      ),
      margin: EdgeInsets.only(right: width * 5 / 100, top: height * 3 / 100),
      child: Theme(
        child: Padding(
          padding: EdgeInsets.fromLTRB(width * 3.5 / 100, 2, width * 4.5 / 100, 2),
          child: TextFormField(
            controller: controller,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(18),
              focusColor: Colors.grey[300],
              prefixIcon: Icon(
                preffixIcon,
                color: Colors.black,
              ),
              suffixIcon: hasSuffixIcon ? Icon(Icons.remove_red_eye_outlined) : null,
              filled: true,
              fillColor: Colors.white,
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
        data: Theme.of(context).copyWith(
          primaryColor: Colors.grey[500],
        ),
      ),
    );
  }
}
