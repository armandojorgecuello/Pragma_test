import 'dart:io';
import 'package:flutter/material.dart';
import 'package:pragma/core/models/cat_model.dart';
import 'package:pragma/generated/l10n.dart';
import 'package:pragma/styles/custom_styles.dart';
import 'package:pragma/ui/utils/constants.dart';
import 'package:pragma/ui/utils/responsive.dart';
import 'package:pragma/ui/widget/custom_rich_text.dart';
import 'package:pragma/ui/widget/custom_text.dart';

class DestailsScreen extends StatelessWidget {
  final CatModel cat;
  const DestailsScreen({ required this.cat, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Text(
          cat.name!,
          style: Styles.h1.copyWith(
            fontSize: kDimens25,
            color: kBlack
          ),
        ),
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Platform.isAndroid ? const Icon( Icons.arrow_back, color: kBlack ) : const Icon( Icons.arrow_back_ios, color: kBlack ) ,
        ),
      ),
      body: Padding(
        child: _body(context),
        padding: const EdgeInsets.symmetric(horizontal: kDimens015)
      ),
    );
  }

  _body(context) {
    final responsive = Responsive(context);
    return Column(
      children: [
        cat.image!.url != null 
        ? Flexible(
          flex: 4,
          child: Align(
            alignment: Alignment.topCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(kDimens2),
              child: FadeInImage(
                placeholder: const AssetImage('assets/gif/cat_loading_animation.gif'), 
                image: NetworkImage(
                  cat.image!.url!,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
        : Image.asset(
          'assets/images/no_image.jpeg'
        ),
        Flexible(
          flex: 6,
          child: Scrollbar(
            isAlwaysShown: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: kDimens10),
              child: ListView(
                shrinkWrap:true,
                children: [
                  CustomText(catInfo: cat.description!, fontWeight: FontWeight.normal),
                  CustomRichText( title: I18n.of(context).sHomeInteligence , value: cat.intelligence!.toString()),
                  CustomRichText( title: I18n.of(context).SHomeLifeSpan , value: '${cat.lifeSpan!} ${I18n.of(context).SHomeYearsText} '),
                  CustomRichText( title: I18n.of(context).SHomeOrigin , value: cat.origin!.toString()),
                  CustomRichText( title: I18n.of(context).sHomeadaptability , value: cat.adaptability!.toString()),
                  CustomRichText( title: I18n.of(context).sHomeaffectionLevel , value: cat.affectionLevel!.toString()),
                  CustomRichText( title: I18n.of(context).sHomechildFriendly , value: cat.childFriendly!.toString()),
                  CustomRichText( title: I18n.of(context).sHomedogFriendly , value: cat.dogFriendly!.toString()),
                  CustomRichText( title: I18n.of(context).sHomeenergyLevel , value: cat.energyLevel!.toString()),
                  CustomRichText( title: I18n.of(context).sHomeexperimental , value: cat.experimental!.toString()),
                  CustomRichText( title: I18n.of(context).sHomegrooming , value: cat.grooming!.toString()),
                  CustomRichText( title: I18n.of(context).sHomehairless , value: cat.hairless!.toString()),
                  CustomRichText( title: I18n.of(context).sHomehealthIssues , value: cat.healthIssues!.toString()),
                  CustomRichText( title: I18n.of(context).sHomehypoallergenic , value: cat.hypoallergenic!.toString()),
                  CustomRichText( title: I18n.of(context).sHomenatural , value: cat.natural!.toString()),
                  CustomRichText( title: I18n.of(context).sHomerare , value: cat.rare!.toString()),
                  CustomRichText( title: I18n.of(context).sHomerex , value: cat.rex!.toString()),
                  CustomRichText( title: I18n.of(context).sHomesheddingLevel , value: cat.sheddingLevel!.toString()),
                  CustomRichText( title: I18n.of(context).sHomesocialNeeds , value: cat.socialNeeds!.toString()),
                  CustomRichText( title: I18n.of(context).sHomestrangerFriendly , value: cat.strangerFriendly!.toString()),
                  CustomRichText( title: I18n.of(context).sHomevocalisation , value: cat.vocalisation!.toString()),
                  CustomRichText( title: I18n.of(context).sHomesuppressedTail , value: cat.suppressedTail!.toString()),
                ],
              ),
            ),
          ),
        )  
      ],
    );
  }
}