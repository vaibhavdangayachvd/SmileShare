import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:smileshare/domain/core/value_objects.dart';
import 'package:smileshare/domain/request/request.dart';

extension DocumentDomainX on DocumentSnapshot {
  Request toRequest() {
    return Request(
      id: UniqueId.fromUniqueString(documentID.toString()),
      creationTime: DateTime.tryParse(data['created'].toString()),
      currentAmount:
          Count(int.tryParse(data['currentAmount'].toString()) ?? -1),
      description: ValidDescription(data['description'].toString()),
      imageUrl: ValidUrl(data['imageUrl'].toString()),
      title: ValidName(data['title'].toString()),
      videoUrl: data['videoUrl'].toString(),
      completionTime:
          DateTime.tryParse(data['completed'].toString()) ?? DateTime.now(),
      verified: data['isVerified'] as bool,
      completed: data['isCompleted'] as bool,
      requiredAmount:
          Count(int.tryParse(data['requiredAmount'].toString()) ?? -1),
    );
  }
}
