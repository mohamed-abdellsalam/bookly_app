import 'package:bookly/Features/home/presenatation/views/book_detalies_view.dart';
import 'package:bookly/Features/home/presenatation/views/home_view.dart';
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsview = '/book';
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
        path: kBookDetailsview,
        builder: (context, state) => const BookDetaliesView(),
      ),
    ],
  );
}
