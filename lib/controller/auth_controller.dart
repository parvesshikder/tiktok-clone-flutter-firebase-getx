import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../constants.dart';
import '../model/user.dart' as model;

class AuthController extends GetxController{

  static AuthController instance = Get.find();

  late Rx<File?> _pickedImage;
  File? get profilePicture => _pickedImage.value;

  //pick image
  Future<void> pickUserProfile() async {
        final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
        if(pickedImage!=null){
          Get.snackbar('Profile Picture', 'Profile Picture Selescted');
        }else{
          _pickedImage = Rx<File?> (File(pickedImage!.path));
        }
  }

  //store user image
  Future<String>_uploadToStorage(File? image) async{
    Reference ref = firebaseStorage.ref().child('profilePicture').child(firebaseAuth.currentUser!.uid);
    UploadTask uploadTask =  ref.putFile(image!);
    TaskSnapshot snapshot = await uploadTask;
    String downloadUrl = await snapshot.ref.getDownloadURL();
    return downloadUrl;
  }

  //create new user
  Future<void> registerUser({required String name, required String email, required String password,  File? image}) async {
    try {
      if(name.isNotEmpty && email.isNotEmpty && password.isNotEmpty){
        UserCredential userCredential = await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
       // String downloadUrl = await _uploadToStorage(image);
        model.User user = model.User(name: name, email: email ,uid: userCredential.user!.uid);
        firebaseFirestore.collection('users').doc(userCredential.user!.uid).set(user.toJson());
      }else{
        Get.snackbar('Error in creating account', 'Please Enter all details');
      }
    }catch(e){
      Get.snackbar('Error in creating account', e.toString());
    }
  }
}