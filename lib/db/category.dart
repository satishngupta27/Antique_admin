import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

class CategoryService{
  Firestore _firestore = Firestore.instance;
String ref= 'categories';
  void createCategory(String name){
    var id = Uuid();
    String categoryId = id.v1();

    _firestore.collection(ref).document(categoryId).setData({'category': name});
  }
  Future<List<DocumentSnapshot>> getCategories(){
    return _firestore.collection(ref).getDocuments().then((Snaps){
      return Snaps.documents;
    });
  }
}