import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/widgets/BestSellerListViewItem.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 2,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          // child: BestSellerListViewItem(),
          child: Text("Free Books"),
        );
      },
    );
  }
}
