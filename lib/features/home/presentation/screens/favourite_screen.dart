import 'package:flutter/material.dart';
import 'package:pill_mate/features/home/presentation/widgets/common/custom_app_bar.dart';
import 'package:pill_mate/features/home/presentation/widgets/favourite_screen_widgets/favourite_grid_view.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(appBarTitle: 'Favorites'),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              sliver: FavouriteGridView()),
        ],
      ),
    );
  }
}
