import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class User{
  final String name;
  final String email;
  User({
    required this.name,
    required this.email,
  });

  User copyWith({String? name,String? email}){
    return User(
        name: name ?? this.name,
        email: email ?? this.email
    );
  }
  Map<String,dynamic> toMap(){
    return {
      'name':name,
      'email':email
    };
  }
  factory User.fromMap(Map<String,dynamic> map){
    return User(
        name:map['name']??"",
        email: map['email']??"",
    );
  }

  String toJson()=> json.encode(toMap());

  factory User.fromJson(String source)=>User.fromMap(json.decode(source));

  @override
  String toString()=> 'User(name: $name, email: $email)';

  @override
  bool operator == (Object other){
    if(identical(this, other)) return true;

    return other is User && other.name ==name &&other.email==email;
  }

  @override
  int get hashCode=>name.hashCode ^ email.hashCode;
}


// class UserNotifier extends StateNotifier<bool>{
//   UserNotifier(super.state);
//
//   void updateName(String n){
//     // state=User(name: n, age: state.age); //this is lengthy approach if more fields overhere
//
//
//
//   }
//
// }
