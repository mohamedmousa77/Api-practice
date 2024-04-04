import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as https;

import 'module.dart';

// GET Api request
Future<Post> fetchData() async{
  final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  final response = await https.get(url);
  if(response.statusCode == 200){
    return Post.fromJson(json.decode(response.body));
  }
  else{
    throw Exception('Failed to load');
  }
}

// POST Api request
Future<Post> postData(String title, String body) async{
  Map<String, dynamic> request = {
    "userID": "0001",
    "title": title,
    "body": body
  };
  final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  final response = await https.post(url,body: request);
  if(response.statusCode == 200 || response.statusCode == 201){
    return Post.fromJson(json.decode(response.body));
  }
  else{
    throw Exception('Failed to load');
  }
}

// UPDATE Api request
Future<Post> updateData(String title, String body) async{
  Map<String, dynamic> request = {
    "userID": "0001",
    "title": title,
    "body": body
  };
  final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  final response = await https.put(url,body: request);
  if(response.statusCode == 200 || response.statusCode == 201){
    return Post.fromJson(json.decode(response.body));
  }
  else{
    throw Exception('Failed to load');
  }
}

// DELETE Api request
Future<Post> deleteData() async{
  final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  final response = await https.delete(url);
  if(response.statusCode == 200 || response.statusCode == 201){
    return throw Exception('Deleted successfully');
  }
  else{
    throw Exception('Failed to load');
  }
}
