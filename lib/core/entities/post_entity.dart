// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:instagram/core/entities/media_entity.dart';
import 'package:instagram/core/entities/user_entity.dart';

class PostEntity {
  final String id;
  final UserEntity author;
  final List<MediaEntity> media;
  final int likes;
  final int comments;
  final DateTime createdAt;
  final String? description;

  PostEntity({
    required this.id,
    required this.author,
    required this.media,
    required this.likes,
    required this.comments,
    required this.createdAt,
    this.description,
  });

  PostEntity copyWith({
    String? id,
    UserEntity? author,
    List<MediaEntity>? media,
    int? likes,
    int? comments,
    DateTime? createdAt,
    String? description,
  }) {
    return PostEntity(
      id: id ?? this.id,
      author: author ?? this.author,
      media: media ?? this.media,
      likes: likes ?? this.likes,
      comments: comments ?? this.comments,
      createdAt: createdAt ?? this.createdAt,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'author': author.toMap(),
      'media': media.map((x) => x.toMap()).toList(),
      'likes': likes,
      'comments': comments,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'description': description,
    };
  }

  factory PostEntity.fromMap(Map<String, dynamic> map) {
    return PostEntity(
      id: map['id'] as String,
      author: UserEntity.fromMap(map['author'] as Map<String, dynamic>),
      media: List<MediaEntity>.from(
        (map['media'] as List<int>).map<MediaEntity>(
          (x) => MediaEntity.fromMap(x as Map<String, dynamic>),
        ),
      ),
      likes: map['likes'] as int,
      comments: map['comments'] as int,
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int),
      description: map['description'] != null ? map['description'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PostEntity.fromJson(String source) => PostEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PostEntity(id: $id, author: $author, media: $media, likes: $likes, comments: $comments, createdAt: $createdAt, description: $description)';
  }

  @override
  bool operator ==(covariant PostEntity other) {
    if (identical(this, other)) return true;

    return other.id == id && other.author == author && listEquals(other.media, media) && other.likes == likes && other.comments == comments && other.createdAt == createdAt && other.description == description;
  }

  @override
  int get hashCode {
    return id.hashCode ^ author.hashCode ^ media.hashCode ^ likes.hashCode ^ comments.hashCode ^ createdAt.hashCode ^ description.hashCode;
  }
}
