import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/utils/app_colors.dart';

class CoustomCheckbox extends StatefulWidget {
  const CoustomCheckbox({super.key, this.onChanged});
  final ValueChanged<bool>? onChanged;
  @override
  State<CoustomCheckbox> createState() => _CoustomCheckboxState();
}

class _CoustomCheckboxState extends State<CoustomCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
          widget.onChanged?.call(isChecked);
        });
      },
      child: AnimatedContainer(
        width: 24,
        height: 24,
        duration: Duration(milliseconds: 100),
        decoration: ShapeDecoration(
          color: isChecked ? AppColors.primaryColor : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.50,
              color: isChecked ? Colors.transparent : Color(0xFFDCDEDE),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child:
            isChecked
                ? FittedBox(
                  child: Icon(Icons.check, color: Colors.white, size: 22),
                )
                : SizedBox(),
      ),
    );
  }
}
