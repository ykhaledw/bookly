import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/book_details/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly/features/home/presentation/views_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImplementation>(),
          ),
          child: BooksDetailsView(bookModel: state.extra as BookModel),
          ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
