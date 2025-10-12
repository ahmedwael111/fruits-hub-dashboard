import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/utils/app_styles.dart';
import 'package:fruits_hub_dashboard/featurs/add_product_feature/presentation/views/widgets/coustom_checkBox.dart';

class IsItemFeaturedWidget extends StatelessWidget {
  const IsItemFeaturedWidget({super.key, this.onChanged});
  final void Function(bool)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CoustomCheckbox(onChanged: onChanged),
        SizedBox(width: 16),
        Flexible(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'is this item featured?',
                  style: AppTextStyles.simibold13.copyWith(
                    color: const Color(0xFF949D9E),
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}
