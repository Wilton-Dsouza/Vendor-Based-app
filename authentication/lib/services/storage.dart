import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

class Storage {
  Future uploadPicture({String uid, String imageFileName, File image}) async {
    //to get only the file name instead of the whole path for readability
//    String imageFileName = basename(image_name); //image file name
    StorageReference firebaseStorageReference = FirebaseStorage.instance
        .ref()
        .child(uid); //location of the image to be added
//    .child('user1_sub_folder');
    StorageUploadTask uploadTask = firebaseStorageReference
        .child(imageFileName)
        .putFile(image); //file(in this case, image) uploaded under the filename
    StorageTaskSnapshot taskSnapshot =
        await uploadTask.onComplete; //to check whether the upload is complete
    print('Uploaded');
  }
}
