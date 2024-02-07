import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/assets.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 30, top: 50, bottom: 30),
      child: Row(
        children: [
          Image.asset(
            AssetesData.logo,
            height: 20,
          ),
          SizedBox(
            width: 200,
          ),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push('/SearchView');
              },
              icon: Icon(
                Icons.search,
                size: 20,
              ))
        ],
      ),
    );
  }
}
