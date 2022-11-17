import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/personlist.dart';
import '../../../size_config.dart';

/// A row of chips to pick one blood group. Choosing the selected chip again shows every group.
class BloodGroupFilter extends StatelessWidget {
  const BloodGroupFilter({
    super.key,
    required this.selected,
    required this.onChanged,
  });

  /// The chosen blood group, or null when all donors are shown.
  final String? selected;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(44),
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        children: [
          for (final group in bloodGroups)
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ChoiceChip(
                label: Text(group),
                selected: selected == group,
                selectedColor: kPrimaryColor.withOpacity(0.2),
                onSelected: (isSelected) =>
                    onChanged(isSelected ? group : null),
              ),
            ),
        ],
      ),
    );
  }
}
