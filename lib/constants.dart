// COLORS
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import 'controller/auth_controller.dart';

const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

//Text Style

var boldTextStyle = TextStyle(fontSize: 35, color: Colors.red[500], fontWeight: FontWeight.w900);
const normalTextStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.w500);

//Sizedbox
const sizedBox10pxH = SizedBox(height: 10);
const sizedBox10pxW = SizedBox(width: 10);
const sizedBox20pxH = SizedBox(height: 20);
const sizedBox20pxW = SizedBox(width: 20);

//Firebase
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage =  FirebaseStorage.instance;
var firebaseFirestore = FirebaseFirestore.instance;

//AuthController
var authController =  AuthController.instance;


