import 'package:flutter/material.dart';
import 'package:proyek_akhir/widgets/color.dart';

class ObjCount extends StatefulWidget {
  const ObjCount({Key? key}) : super(key: key);

  @override
  State<ObjCount> createState() => _ObjCountState();
}

class _ObjCountState extends State<ObjCount> {
  int _count = 1;

  void _IncCount() {
    setState(() {
      _count++;
    });
  }

  void _DecCount() {
    setState(() {
      _count--;
      if (_count <= 1) {
        _count = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Material(
            child: Container(
              height: 40,
              width: 40,
              child: InkWell(onTap: _DecCount, child: Icon(Icons.remove)),
            ),
          ),
          Text("${_count}"),
          Material(
            child: Container(
              height: 40,
              width: 40,
              child: InkWell(
                onTap: _IncCount,
                child: Icon(Icons.add),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
