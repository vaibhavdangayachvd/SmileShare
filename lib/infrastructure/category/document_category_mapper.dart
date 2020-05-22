import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:smileshare/domain/category/category.dart';
import 'package:smileshare/domain/core/value_objects.dart';

extension DocumentDomainX on DocumentSnapshot {
  Category toCategory() {
    return Category(
      imageUrl: ValidUrl(data['imageUrl'].toString()),
      categoryName: ValidName(data['name'].toString()),
      id: UniqueId.fromUniqueString(documentID),
      requestCount: Count(int.tryParse(data['requestCount'].toString()) ?? -1),
    );
  }
}
