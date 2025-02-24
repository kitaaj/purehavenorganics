import 'package:flutter/material.dart';

class SearchShimmer extends StatelessWidget {
  const SearchShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return const ListTile(
          leading: CircleAvatar(),
          title: LinearProgressIndicator(),
        );
      },
    );
  }
}