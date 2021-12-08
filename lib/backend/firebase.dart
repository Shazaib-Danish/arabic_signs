import 'dart:io';

import 'package:arabic_lan/auth/firebase_user_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

Future<List<String>> getWords() async {
  List<String> wordsList = [];
  await FirebaseFirestore.instance
      .collection("Words")
      .doc('wqMmNVi1zSxGPFf4VMu6')
      .get()
      .then((value) {
    // first add the data to the Offset object
    List.from(value.data()['words']).forEach((element) {
      wordsList.add(element);
    });
  });
  return wordsList;
}

Future<String> uploadToStorage(File file, BuildContext context) async {
  try {
    int sizeInBytes = file.lengthSync();
    double sizeInMb = sizeInBytes / (1024 * 1024);

    final DateTime now = DateTime.now();
    final int millSeconds = now.millisecondsSinceEpoch;
    final String month = now.month.toString();
    final String date = now.day.toString();
    final String storageId = (millSeconds.toString() + currentUser.user.uid);
    final String today = ('$month-$date');

    Reference ref = FirebaseStorage.instance
        .ref()
        .child("video")
        .child(today)
        .child(storageId);
    UploadTask uploadTask =
        ref.putFile(file, SettableMetadata(contentType: 'video/mp4'));

    var dowurl = await (await uploadTask).ref.getDownloadURL();
    String url = dowurl.toString();
    if (url != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Video uploaded  With Size " + sizeInMb.toString(),
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Failed to upload",
          ),
        ),
      );
    }
  } catch (error) {
    print(error);
  }
  return null;
}
