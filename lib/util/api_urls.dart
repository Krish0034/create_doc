import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class FireBaseStorage
{

 /// doc url: https://firebase.google.com/docs/auth/flutter/password-auth

 User? user = FirebaseAuth.instance.currentUser;
 final _dataBaseInstances = FirebaseFirestore.instance;

 static const String userDetails = "userDetails";

 CollectionReference get usersCollectionReference =>
     _dataBaseInstances.collection(userDetails);

}