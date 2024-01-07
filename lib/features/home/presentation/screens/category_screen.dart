import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pill_mate/features/home/presentation/widgets/category_screen_widgets/product_grid_view.dart';
import 'package:pill_mate/features/home/presentation/widgets/common/custom_app_bar.dart';
import 'package:pill_mate/features/home/presentation/widgets/common/search_text_field.dart';

import '../bloc/cubit/search_cubit.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  //i use it to test search only
  final List<String> productsNames = const [
    'Panadol',
    'Vitaferrol B12 Vitaferrol B12',
    'Revo',
    'Vitaferrol',
    'Sdrafollsh',
    'panadol 600',
    'vitabolly',
    'Renoci',
    'Panadol 300',
    'Analarg'
  ];

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    final searchCubit = BlocProvider.of<SearchCubit<String>>(context);
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      appBar: CustomAppBar(
        appBarTitle: arguments['category name'],
        //!just for navigating to favourite screen in this task
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomSearchBar(
                textEditingController: searchController,
                hintText: 'Search',
                onChanged: (query) => searchCubit.filterSearchResults(
                    productsNames, query, (String productName) => productName),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            sliver: BlocBuilder<SearchCubit<String>, List<String>>(
              builder: (context, filteredList) {
                return ProductGridView(
                    productsNames: searchController.text.isEmpty
                        ? productsNames
                        : filteredList);
              },
            ),
          ),
        ],
      ),
    );
  }
}
