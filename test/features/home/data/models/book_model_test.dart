import 'package:flutter_test/flutter_test.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/models/book_model/volume_info.dart';
import 'package:bookly_app/Features/home/data/models/book_model/sale_info.dart';
import 'package:bookly_app/Features/home/data/models/book_model/access_info.dart';
import 'package:bookly_app/Features/home/data/models/book_model/search_info.dart';

void main() {
  group('BookModel toJson', () {
    test('should return correct json map with all fields populated', () {
      final volumeInfo = VolumeInfo();
      final saleInfo = SaleInfo();
      final accessInfo = AccessInfo();
      final searchInfo = SearchInfo();

      final bookModel = BookModel(
        kind: 'books#volume',
        id: '12345',
        etag: 'etag123',
        selfLink: 'https://api.example.com/books/12345',
        volumeInfo: volumeInfo,
        saleInfo: saleInfo,
        accessInfo: accessInfo,
        searchInfo: searchInfo,
      );

      final result = bookModel.toJson();

      expect(result['kind'], 'books#volume');
      expect(result['id'], '12345');
      expect(result['etag'], 'etag123');
      expect(result['selfLink'], 'https://api.example.com/books/12345');
      expect(result['volumeInfo'], volumeInfo.toJson());
      expect(result['saleInfo'], saleInfo.toJson());
      expect(result['accessInfo'], accessInfo.toJson());
      expect(result['searchInfo'], searchInfo.toJson());
    });

    test('should handle null optional fields', () {
      final bookModel = BookModel(
        kind: 'books#volume',
        id: '12345',
        etag: 'etag123',
        selfLink: 'https://api.example.com/books/12345',
      );

      final result = bookModel.toJson();

      expect(result['kind'], 'books#volume');
      expect(result['id'], '12345');
      expect(result['etag'], 'etag123');
      expect(result['selfLink'], 'https://api.example.com/books/12345');
      expect(result['volumeInfo'], null);
      expect(result['saleInfo'], null);
      expect(result['accessInfo'], null);
      expect(result['searchInfo'], null);
    });

    test('should handle empty string values', () {
      final bookModel = BookModel(
        kind: '',
        id: '',
        etag: '',
        selfLink: '',
      );

      final result = bookModel.toJson();

      expect(result['kind'], '');
      expect(result['id'], '');
      expect(result['etag'], '');
      expect(result['selfLink'], '');
    });
  });
}
