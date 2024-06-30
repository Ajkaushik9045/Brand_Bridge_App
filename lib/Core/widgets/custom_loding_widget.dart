import 'dart:io';
import 'package:brandbridge/Core/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LodingWidget extends StatefulWidget {
  final double size;
  const LodingWidget({super.key, this.size = 60});

  @override
  State<LodingWidget> createState() => _LodingWidgetState();
}

class _LodingWidgetState extends State<LodingWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size,
      width: widget.size,
      child: Platform.isAndroid
          ? const CircularProgressIndicator(
              color: Appcolors.loding,
            )
          : const CupertinoActivityIndicator(
              color: Appcolors.loding,
            ),
    );
  }
}
