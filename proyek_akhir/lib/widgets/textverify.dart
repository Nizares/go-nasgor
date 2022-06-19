import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proyek_akhir/widgets/color.dart';

class TextVerify extends StatelessWidget {
  const TextVerify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: TextField(
        textAlign: TextAlign.center,
        style: TextStyle(
          color: white2,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          counterText: '',
        enabledBorder: UnderlineInputBorder(      
          borderSide: BorderSide(color: white2),   
        ),  
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: white2),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: white2),

        ),
        ),
        maxLength: 1,
      ),
    );
  }
}
