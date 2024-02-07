import 'package:flutter_application_1/core/utils/survice_locator.dart';
import 'package:flutter_application_1/features/home/data/manger/cubit/similar_books/similar_books_cubit.dart';
import 'package:flutter_application_1/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/data/repos/home_repo.dart';
import 'package:flutter_application_1/features/home/data/repos/home_repo_impl.dart';
import 'package:flutter_application_1/features/splash/SplashScreen.dart';
import 'package:flutter_application_1/features/home/widgets/BookDetailsScreen.dart';
import 'package:flutter_application_1/features/home/HomeScreen.dart';
import 'package:flutter_application_1/features/search/SearchScreen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/HomeScreen',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/BookDetailsScreen',
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsScreen(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: '/SearchView',
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
