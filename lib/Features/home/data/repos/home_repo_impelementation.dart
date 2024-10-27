import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpelementation implements HomeRepo {
  @override
  final ApiService apiService;

  HomeRepoImpelementation(this.apiService);
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?q=subject:programming&Fiitering=free-ebooks&Sorting=newest');
      List<BookModel> Books = [];
      for (var item in data['items']) {
        Books.add(BookModel.fromJson(item));
      }
      return right(Books);
    } on Exception catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturesBooks() {
    // TODO: implement fetchFeaturesBooks
    throw UnimplementedError();
  }
}
