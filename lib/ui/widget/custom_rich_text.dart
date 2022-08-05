import 'package:flutter/material.dart';
import 'package:pragma/generated/l10n.dart';
import 'package:pragma/styles/custom_styles.dart';
import 'package:pragma/ui/utils/dimensions.dart';

class CustomRichText extends StatelessWidget {
  final String title;
  final String value;
  final FontWeight fontWeight;
  const CustomRichText({ this.fontWeight = FontWeight.normal, required this.title, required this.value, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDimens10),
      child: RichText(
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
          text: title,
          style: Styles.h2.copyWith(
            fontSize: kDimens16,
            fontWeight: fontWeight
          ),
          children: [
            TextSpan(
              text: value,
              style: Styles.h2.copyWith(
                fontSize: kDimens16,
              ),
            )
          ]
        )
      ),
    );
  }
}