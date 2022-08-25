import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

final firestore = FirebaseFirestore.instance;

final qustionPeoperRF = firestore.collection('qustionpeoper');

DocumentReference qustionRF(
        {required String paperId, required String qustionId}) =>
    qustionPeoperRF.doc(paperId).collection('qustions').doc(qustionId);
Reference get firebaseStoreage => FirebaseStorage.instance.ref();
