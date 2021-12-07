// import 'dart:async';

// import 'index.dart';
// import 'serializers.dart';
// import 'package:built_value/built_value.dart';

// part 'videos_record.g.dart';

// abstract class VideosRecord
//     implements Built<VideosRecord, VideosRecordBuilder> {
//   static Serializer<VideosRecord> get serializer => _$videosRecordSerializer;

//   @nullable
//   int get videoID;

//   @nullable
//   DocumentReference get wordID;

//   @nullable
//   DocumentReference get userID;

//   @nullable
//   @BuiltValueField(wireName: 'Video')
//   String get video;

//   @nullable
//   @BuiltValueField(wireName: 'Flag')
//   String get flag;

//   @nullable
//   String get flagReason;

//   @nullable
//   @BuiltValueField(wireName: kDocumentReferenceField)
//   DocumentReference get reference;

//   static void _initializeBuilder(VideosRecordBuilder builder) => builder
//     ..videoID = 0
//     ..video = ''
//     ..flag = ''
//     ..flagReason = '';

//   static CollectionReference get collection =>
//       FirebaseFirestore.instance.collection('Videos');

//   static Stream<VideosRecord> getDocument(DocumentReference ref) => ref
//       .snapshots()
//       .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

//   VideosRecord._();
//   factory VideosRecord([void Function(VideosRecordBuilder) updates]) =
//       _$VideosRecord;

//   static VideosRecord getDocumentFromData(
//           Map<String, dynamic> data, DocumentReference reference) =>
//       serializers.deserializeWith(serializer,
//           {...mapFromFirestore(data), kDocumentReferenceField: reference});
// }

// Map<String, dynamic> createVideosRecordData({
//   int videoID,
//   DocumentReference wordID,
//   DocumentReference userID,
//   String video,
//   String flag,
//   String flagReason,
// }) =>
//     serializers.toFirestore(
//         VideosRecord.serializer,
//         VideosRecord((v) => v
//           ..videoID = videoID
//           ..wordID = wordID
//           ..userID = userID
//           ..video = video
//           ..flag = flag
//           ..flagReason = flagReason));
