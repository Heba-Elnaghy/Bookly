// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/styles.dart';
import 'package:flutter_application_1/core/widgets/CustomButton.dart';
import 'package:flutter_application_1/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/widgets/BookDetailsSection.dart';
import 'package:flutter_application_1/features/home/widgets/BookReating.dart';
import 'package:flutter_application_1/features/home/widgets/BooksAction.dart';
import 'package:flutter_application_1/features/home/widgets/CustomBookDetailsAppBar.dart';
import 'package:flutter_application_1/features/home/widgets/CustomListViewItem.dart';
import 'package:flutter_application_1/features/home/widgets/SimilarBooksLIstView.dart';
import 'package:flutter_application_1/features/home/widgets/SimilarBooksSection.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({
    Key? key,
    required this.bookModel,
  }) : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  CustomBookDetailsAppBar(),
                  BookDetailsSection(book: bookModel),
                  Expanded(
                    child: SizedBox(
                      height: 50,
                    ),
                  ),
                  SimilarBooksSection(),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
