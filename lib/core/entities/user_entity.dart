import 'dart:convert';

class UserEntity {
  final String id;
  final String name;
  final int followers;
  final int following;
  final String avatarUrl;
  final String biography;
  final bool isVerified;
  final bool isPrivate;
  final bool isMessageBlocked;
  UserEntity({
    required this.id,
    required this.name,
    required this.followers,
    required this.following,
    required this.avatarUrl,
    required this.biography,
    required this.isVerified,
    required this.isPrivate,
    required this.isMessageBlocked,
  });

  UserEntity copyWith({
    String? id,
    String? name,
    int? followers,
    int? following,
    String? avatarUrl,
    String? biography,
    bool? isVerified,
    bool? isPrivate,
    bool? isMessageBlocked,
  }) {
    return UserEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      followers: followers ?? this.followers,
      following: following ?? this.following,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      biography: biography ?? this.biography,
      isVerified: isVerified ?? this.isVerified,
      isPrivate: isPrivate ?? this.isPrivate,
      isMessageBlocked: isMessageBlocked ?? this.isMessageBlocked,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'followers': followers,
      'following': following,
      'avatarUrl': avatarUrl,
      'biography': biography,
      'isVerified': isVerified,
      'isPrivate': isPrivate,
      'isMessageBlocked': isMessageBlocked,
    };
  }

  factory UserEntity.fromMap(Map<String, dynamic> map) {
    return UserEntity(
      id: map['id'] as String,
      name: map['name'] as String,
      followers: map['followers'] as int,
      following: map['following'] as int,
      avatarUrl: map['avatarUrl'] as String,
      biography: map['biography'] as String,
      isVerified: map['isVerified'] as bool,
      isPrivate: map['isPrivate'] as bool,
      isMessageBlocked: map['isMessageBlocked'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserEntity.fromJson(String source) => UserEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserEntity(id: $id, name: $name, followers: $followers, following: $following, avatarUrl: $avatarUrl, biography: $biography, isVerified: $isVerified, isPrivate: $isPrivate, isMessageBlocked: $isMessageBlocked)';
  }

  @override
  bool operator ==(covariant UserEntity other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name && other.followers == followers && other.following == following && other.avatarUrl == avatarUrl && other.biography == biography && other.isVerified == isVerified && other.isPrivate == isPrivate && other.isMessageBlocked == isMessageBlocked;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ followers.hashCode ^ following.hashCode ^ avatarUrl.hashCode ^ biography.hashCode ^ isVerified.hashCode ^ isPrivate.hashCode ^ isMessageBlocked.hashCode;
  }
}
