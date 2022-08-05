import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pragma/core/models/cat_model.dart';
import 'package:pragma/generated/l10n.dart';
import 'package:pragma/ui/screen/details_screen/details_screen.dart';
import 'package:pragma/ui/utils/constants.dart';
import 'package:pragma/ui/widget/custom_rich_text.dart';
import 'package:pragma/ui/widget/custom_text.dart';

class CustomCard extends StatelessWidget {
  final CatModel cat;
  const CustomCard({ required this.cat, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kDimens2)
      ),
      elevation: Platform.isAndroid ? kDimens5 : kDimens0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomRichText(title: I18n.of(context).sHomeNameRace , value: cat.name!, fontWeight: FontWeight.bold,),
              const Spacer(),
              RawMaterialButton(
                onPressed: () {  
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => DestailsScreen(cat: cat)
                    )
                  );
                },
                child: CustomText(catInfo: I18n.of(context).sHomeViewMoreButtom )
              ),
            ],
          ),
          cat.image!.url != null 
          ? ClipRRect(
            borderRadius: BorderRadius.circular(kDimens2),
            child: FadeInImage(
              placeholder: const AssetImage('assets/gif/cat_loading_animation.gif'), 
              image: NetworkImage(
                cat.image!.url!,
              ),
            ),
          )
          : Container(),
          Row(
            children: [
              Expanded(child: CustomRichText(title: I18n.of(context).SHomeOrigin , value: cat.origin!.substring(0, 5), fontWeight: FontWeight.bold,)),
              Expanded(child: CustomRichText(title: I18n.of(context).sHomeInteligence , value: cat.intelligence.toString(), fontWeight: FontWeight.bold))
            ],
          ),
        ],
      ),
    );
  }
}
