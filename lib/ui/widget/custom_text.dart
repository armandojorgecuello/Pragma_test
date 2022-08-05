
import 'package:flutter/material.dart';
import 'package:pragma/styles/custom_styles.dart';
import 'package:pragma/ui/utils/constants.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.catInfo,
    this.fontWeight = FontWeight.bold,
  }) : super(key: key);

  final String catInfo;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDimens10),
      child: Text(
        catInfo,
        style: Styles.h2.copyWith(
          fontSize: kDimens18,
          fontWeight: fontWeight
        ),
      ),
    );
  }
}

