// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/styles.dart';

class BookReating extends StatelessWidget {
  const BookReating({
    Key? key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  }) : super(key: key);
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          Icons.star,
          size: 14,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          "4.",
          style: Styles.titleStyle16,
        ),
        SizedBox(
          height: 5,
        ),
        Opacity(
          opacity: .5,
          child: Text("8",
              style: Styles.titleStyle14.copyWith(fontWeight: FontWeight.w600)),
        )
      ],
    );
  }
}
