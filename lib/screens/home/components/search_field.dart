import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

/// The search field used on the home screen.
class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
    this.onChanged,
  }) : super(key: key);

  /// Called with the text after every change.
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.6,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenWidth(9)),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "Search donors",
            prefixIcon: const Icon(Icons.search)),
      ),
    );
  }
}
