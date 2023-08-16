library hold_down_press_button;

import 'package:flutter/material.dart';

/// A Calculator.
class HoldPressButton extends StatefulWidget {
  String? contents;
  final Color? backgroundColor;
  final double? textSize;
  final int pressTime;
  final Color? fontColor;
  final FontWeight? textWeight;
  final Function? pressFunc;

  HoldPressButton({
    required this.pressTime,
    this.contents,
    this.backgroundColor,
    this.textSize,
    this.fontColor,
    this.textWeight,
    required this.pressFunc,
    super.key,
  });

  @override
  State<HoldPressButton> createState() => _HoldPressButtonState();
}

class _HoldPressButtonState extends State<HoldPressButton>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: Duration(seconds: widget.pressTime));
    controller!.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => controller!.forward(),
      onTapUp: (_) {
        if (controller!.value >= 1.0) {
          // active
          widget.pressFunc!.call();
        } else {
          if (controller!.status == AnimationStatus.forward) {
            controller!.reverse();
          }
        }
      },
      child: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: widget.backgroundColor == null
                          ? [Colors.amber.withOpacity(0.4), Colors.amber]
                          : [
                              widget.backgroundColor!.withOpacity(0.4),
                              widget.backgroundColor!
                            ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight)),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width *
                  (controller == null ? 1 : controller!.value),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.grey.withOpacity(0.3),
                Colors.grey.withOpacity(0.5)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              widget.contents ?? "",
              style: TextStyle(
                color: widget.fontColor ?? Colors.white,
                fontSize: widget.textSize ?? 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
