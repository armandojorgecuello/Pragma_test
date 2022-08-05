import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pragma/core/dependencies/general_provider.dart';
import 'package:pragma/core/models/cat_model.dart';
import 'package:pragma/generated/l10n.dart';
import 'package:pragma/styles/custom_styles.dart';
import 'package:pragma/ui/screen/home_screen/logic/get_cats_provider.dart';
import 'package:pragma/ui/utils/colors.dart';
import 'package:pragma/ui/utils/dimensions.dart';
import 'package:pragma/ui/widget/card_widget.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageConsumerState();
}

class _HomePageConsumerState extends ConsumerState<HomePage> {

  final searchController = TextEditingController();
  final scrollController = ScrollController();

  @override
  void didChangeDependencies() {
    ref.read(getCatsNotifierProvider.notifier).getCats();
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    searchController.dispose();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Text(
          I18n.of(context).sTitleApp,
          style: Styles.h1.copyWith(
            fontSize: kDimens25,
            color: kBlack
          ),
        ),
      ),
      body: _body(),
    );
  }

  _body(){
    final data = ref.watch(getCatsNotifierProvider).data;
    final queryData = ref.watch(searchCatList);
    return ref.watch(getCatsNotifierProvider).isLoading 
    ? Align(
      alignment: Alignment.center,
      child: Platform.isAndroid 
      ? const CircularProgressIndicator() 
      : const CupertinoActivityIndicator(),
    )
    : Padding(
      padding: const EdgeInsets.all(kDimens12),
      child: CustomScrollView(
        controller: scrollController,
        slivers: [
          _sliveTextField(),
          queryData.isEmpty ? _sliverListItems( data! ) : _sliverListItems( queryData )
        ],
      )
    );
  }

  SliverList _sliverListItems(List<CatModel> data) { 
    return SliverList(
      delegate: SliverChildListDelegate(
        data.map((cat)=> Padding(
            padding: const EdgeInsets.symmetric(vertical: kDimens10),
            child: CustomCard(cat: cat),
          )).toList()
      )
    );
  }

  SliverList _sliveTextField() {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          TextField(
            controller: searchController,
            onChanged: (query){
              ref.read(getCatsNotifierProvider.notifier).searchByRaze(query, ref);
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(kDimens5),
              ),
              hintText: I18n.of(context).sHomeSearchByRace,
              suffixIcon: const Icon(Icons.search)
            ),
          )
        ]
      )
    );
  }
}