import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class CoustomProgressIndicator extends StatelessWidget {
  const CoustomProgressIndicator({
    super.key,
    required this.isLoad,
    required this.child,
  });
  final bool isLoad;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(inAsyncCall: isLoad, child: child);
  }
}
