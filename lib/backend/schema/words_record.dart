// import 'dart:async';

// import 'index.dart';
// import 'serializers.dart';
// import 'package:built_value/built_value.dart';

// part 'words_record.g.dart';

// abstract class WordsRecord implements Built<WordsRecord, WordsRecordBuilder> {
//   static Serializer<WordsRecord> get serializer => _$wordsRecordSerializer;

//   @nullable
//   int get wordID;

//   @nullable
//   @BuiltValueField(wireName: 'Word')
//   String get word;

//   @nullable
//   @BuiltValueField(wireName: kDocumentReferenceField)
//   DocumentReference get reference;

//   static void _initializeBuilder(WordsRecordBuilder builder) => builder
//     ..wordID = 0
//     ..word = '';

//   static CollectionReference get collection =>
//       FirebaseFirestore.instance.collection('Words');

//   static Stream<WordsRecord> getDocument(DocumentReference ref) => ref
//       .snapshots()
//       .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

//   WordsRecord._();
//   factory WordsRecord([void Function(WordsRecordBuilder) updates]) =
//       _$WordsRecord;

//   static WordsRecord getDocumentFromData(
//           Map<String, dynamic> data, DocumentReference reference) =>
//       serializers.deserializeWith(serializer,
//           {...mapFromFirestore(data), kDocumentReferenceField: reference});
// }

// Map<String, dynamic> createWordsRecordData({
//   int wordID,
//   String word,
// }) =>
//     serializers.toFirestore(
//         WordsRecord.serializer,
//         WordsRecord((w) => w
//           ..wordID = wordID
//           ..word = word));
