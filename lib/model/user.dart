import 'package:cloud_firestore/cloud_firestore.dart';

class User{
  String name;
  String email;
  //String imageUrl;
  String uid;

  User({required this.name, required this.email,  required this.uid,});

  Map<String, dynamic> toJson() => {
    "name" : name,
    "email": email,
    //"imageUrl": imageUrl,
    "uid" : uid,
  };

  static User fromSnapshot(DocumentSnapshot snapshot){
    var snap = snapshot.data() as Map<String, dynamic>;
    return User(name: snap['name'], email: snap['email'], 
    //imageUrl: snap['imageUrl'], 
    uid: snap['uid']); 
  }
}