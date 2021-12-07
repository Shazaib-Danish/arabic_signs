// import 'package:built_value/serializer.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// import '../flutter_flow/flutter_flow_util.dart';

// import 'schema/users_record.dart';
// import 'schema/videos_record.dart';
// import 'schema/words_record.dart';
// import 'schema/serializers.dart';

// export 'package:cloud_firestore/cloud_firestore.dart';
// export 'schema/index.dart';
// export 'schema/serializers.dart';

// export 'schema/users_record.dart';
// export 'schema/videos_record.dart';
// export 'schema/words_record.dart';

// Stream<List<UsersRecord>> queryUsersRecord(
//         {Query Function(Query) queryBuilder,
//         int limit = -1,
//         bool singleRecord = false}) =>
//     queryCollection(UsersRecord.collection, UsersRecord.serializer,
//         queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

// Stream<List<VideosRecord>> queryVideosRecord(
//         {Query Function(Query) queryBuilder,
//         int limit = -1,
//         bool singleRecord = false}) =>
//     queryCollection(VideosRecord.collection, VideosRecord.serializer,
//         queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

// Stream<List<WordsRecord>> queryWordsRecord(
//         {Query Function(Query) queryBuilder,
//         int limit = -1,
//         bool singleRecord = false}) =>
//     queryCollection(WordsRecord.collection, WordsRecord.serializer,
//         queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

// Stream<List<T>> queryCollection<T>(
//     CollectionReference collection, Serializer<T> serializer,
//     {Query Function(Query) queryBuilder,
//     int limit = -1,
//     bool singleRecord = false}) {
//   final builder = queryBuilder ?? (q) => q;
//   var query = builder(collection);
//   if (limit > 0 || singleRecord) {
//     query = query.limit(singleRecord ? 1 : limit);
//   }
//   return query.snapshots().map((s) => s.docs
//       .map(
//         (d) => safeGet(
//           () => serializers.deserializeWith(serializer, serializedData(d)),
//           (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
//         ),
//       )
//       .where((d) => d != null)
//       .toList());
// }
