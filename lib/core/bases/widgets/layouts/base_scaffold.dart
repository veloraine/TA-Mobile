import 'package:flutter/material.dart';

import '../../../themes/_themes.dart';

class BaseScaffold extends StatelessWidget {
  final Widget body;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final Color backgroundColor;
  final bool resizeToAvoidBottomInset;
  final bool safeArea;
  final bool padding;

  const BaseScaffold({
    required this.body,
    this.backgroundColor = BaseColors.white,
    this.resizeToAvoidBottomInset = false,
    this.safeArea = true,
    this.padding = false,
    this.bottomNavigationBar,
    this.floatingActionButton,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: backgroundColor,
        child: SafeArea(
          top: safeArea,
          bottom: safeArea,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: padding ? 20 : 0),
            child: body,
          ),
        ),
      ),
      backgroundColor: backgroundColor,
      bottomNavigationBar: bottomNavigationBar,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
    );
  }
}
