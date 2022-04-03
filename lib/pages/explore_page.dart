import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../models/explore_page_model.dart';
import '../widgets/image_card.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: CupertinoSearchTextField(
                placeholder: 'Search in Swipexyz',
                controller: _textController,
              ),
            ),
            const SizedBox(height: 20.0),
            const Divider(height: 2, color: Colors.grey),
            const SizedBox(height: 10.0),
            Expanded(
              child: StaggeredGridView.countBuilder(
                padding: const EdgeInsets.all(10.0),
                crossAxisCount: 3,
                itemCount: imageList.length,
                itemBuilder: (context, index) => ImageCard(
                  imageData: imageList[index],
                ),
                staggeredTileBuilder: (index) => StaggeredTile.count(
                  (index % 7 == 0) ? 2 : 1,
                  (index % 7 == 0) ? 2 : 1,
                ),
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
