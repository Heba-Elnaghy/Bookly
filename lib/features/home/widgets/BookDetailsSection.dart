// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/styles.dart';
import 'package:flutter_application_1/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/widgets/BookReating.dart';
import 'package:flutter_application_1/features/home/widgets/BooksAction.dart';
import 'package:flutter_application_1/features/home/widgets/CustomListViewItem.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    Key? key,
    required this.book,
  }) : super(key: key);
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomListViewItem(
            imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? " ",
          ),
        ),
        SizedBox(
          height: 43,
        ),
        Text(
          book.volumeInfo.title!,
          style: Styles.titleStyle30,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 6,
        ),
        Opacity(
            opacity: .7,
            child: Text(
              book.volumeInfo.authors?[0] ?? " ",
              style: Styles.titleStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
            )),
        SizedBox(
          height: 18,
        ),
        const BookReating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(
          height: 37,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: BooksAction(
            bookModel: book,
          ),
        ),
      ],
    );
  }
}
