import 'package:flutter/material.dart';
// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class addCategory extends StatefulWidget {
  const addCategory({super.key});

  @override
  State<addCategory> createState() => _addCategoryState();
}

class _addCategoryState extends State<addCategory> {

  GlobalKey<FormState>formState=GlobalKey<FormState>();
  TextEditingController name=TextEditingController();
  CollectionReference categories=FirebaseFirestore.instance.collection("categories");
  addCategory() async{
    if(formState.currentState!.validate()){
      DocumentReference response= await categories.add(
      {
        "name":name.text,
      }
    );
    Navigator.of(context).pushReplacementNamed("favorite");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}