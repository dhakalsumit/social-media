// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:flutter/foundation.dart';

class UserModel {
  final String name;
  final String profilePic;
  final String banner;
  final String uid;
  final int karma;
  final List<String> award;
  final bool isAuthenticated; // this is for guest or not
  UserModel({
    required this.name,
    required this.profilePic,
    required this.banner,
    required this.uid,
    required this.karma,
    required this.award,
    required this.isAuthenticated,
  });

  UserModel copyWith({
    String? name,
    String? profilePic,
    String? banner,
    String? uid,
    int? karma,
    List<String>? award,
    bool? isAuthenticated,
  }) {
    return UserModel(
      name: name ?? this.name,
      profilePic: profilePic ?? this.profilePic,
      banner: banner ?? this.banner,
      uid: uid ?? this.uid,
      karma: karma ?? this.karma,
      award: award ?? this.award,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'profilePic': profilePic,
      'banner': banner,
      'uid': uid,
      'karma': karma,
      'award': award,
      'isAuthenticated': isAuthenticated,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] as String,
      profilePic: map['profilePic'] as String,
      banner: map['banner'] as String,
      uid: map['uid'] as String,
      karma: map['karma'] as int,
      award: List<String>.from((map['award'] as List<String>)),
      isAuthenticated: map['isAuthenticated'] as bool,
    
    );
  }

 

  @override
  String toString() {
    return 'UserModel(name: $name, profilePic: $profilePic, banner: $banner, uid: $uid, karma: $karma, award: $award, isAuthenticated: $isAuthenticated)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.profilePic == profilePic &&
      other.banner == banner &&
      other.uid == uid &&
      other.karma == karma &&
      listEquals(other.award, award) &&
      other.isAuthenticated == isAuthenticated;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      profilePic.hashCode ^
      banner.hashCode ^
      uid.hashCode ^
      karma.hashCode ^
      award.hashCode ^
      isAuthenticated.hashCode;
  }
}
